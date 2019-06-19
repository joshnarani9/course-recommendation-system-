import pandas as pd

#importing libraries
import pymysql 

#creating connection with server
conn = pymysql.connect(host='localhost', port=3306,user='root', password='', database='first')
cursor = conn.cursor()

query='SELECT u.date_of_birth,u.user_address,e.rating_by_enrolled_student,e.user_id,e.course_id,c.course_title,c.course_language FROM user u,enrolledcoursedetails e,courses c where c.course_id=e.course_id and u.user_id=e.user_id'

#loading data
data = pd.read_sql_query(query, conn)
data.date_of_birth = pd.to_datetime(data.date_of_birth)


from datetime import datetime

import datetime as dt
d=dt.datetime.today().strftime("%d-%m-%Y")
data['age']=data.date_of_birth.apply(lambda x: dt.datetime.today()- x)
data["date_of_birth"] = data.age.apply(lambda x: x.days // 365)
from sklearn.preprocessing import LabelEncoder
le=LabelEncoder()
data['user_address']=le.fit_transform(data['user_address'])
data.drop(['age'],axis=1)
###########ratings

df_pivot = data.pivot(index = 'course_title', columns = 'user_id', values ='rating_by_enrolled_student').fillna(0)

dfset=df_pivot.to_dict()
dat_pivot = data.pivot(index = 'course_title', columns = 'user_id', values ='user_address').fillna(0)
dset=dat_pivot.to_dict()
data_pivot = data.pivot(index = 'course_title', columns = 'user_id', values ='date_of_birth').fillna(0)

dataset=data_pivot.to_dict()
from math import sqrt

def pear_correlation(a,b):
     both_rated = {}
     for i in dfset[a]:
        if i in dfset[b]:
            
             both_rated[i] = 1
 
        number_of_ratings = len(both_rated)
    
    # Checking for number of ratings in common
        if number_of_ratings == 0:
            return 0
 
    # Add up all the preferences of each user
        a_preferences_sum = sum([dfset[a][i] for i in both_rated])
        b_preferences_sum = sum([dfset[b][i] for i in both_rated])
 
    # Sum up the squares of preferences of each user
        a_square_preferences_sum = sum([pow(dfset[a][i],2) for i in both_rated])
        b_square_preferences_sum = sum([pow(dfset[b][i],2) for i in both_rated])
 
    # Sum up the product value of both preferences for each item
        product_sum_of_both_users = sum([dfset[a][i] * dfset[b][i] for i in both_rated])
 
 #Calculate the pearson score
        numerator_value = product_sum_of_both_users - (a_preferences_sum*b_preferences_sum/number_of_ratings)
        denominator_value = sqrt((a_square_preferences_sum - pow(a_preferences_sum,2)/number_of_ratings) * (b_square_preferences_sum -pow(b_preferences_sum,2)/number_of_ratings))
        if denominator_value == 0:
            return 0
        else:
            r = numerator_value/denominator_value
        return r
    
def prson_correlation(a,b):
            
 
    # To get both rated items
            both_rated = {}
            for i in dset[a]:
                if i in dset[b]:
                    both_rated[i] = 1
 
            number_of_ratings = len(both_rated)
    
    # Checking for number of ratings in common
            if number_of_ratings == 0:
                return 0
 
    # Add up all the preferences of each user
            a_preferences_sum = sum([dset[a][i] for i in both_rated])
            b_preferences_sum = sum([dset[b][i] for i in both_rated])
 
    # Sum up the squares of preferences of each user
            a_square_preferences_sum = sum([pow(dset[a][i],2) for i in both_rated])
            b_square_preferences_sum = sum([pow(dset[b][i],2) for i in both_rated])
 
    # Sum up the product value of both preferences for each item
            product_sum_of_both_users = sum([dset[a][i] * dset[b][i] for i in both_rated])
 
 #Calculate the pearson score
            numerator_value = product_sum_of_both_users - (a_preferences_sum*b_preferences_sum/number_of_ratings)
            denominator_value = sqrt((a_square_preferences_sum - pow(a_preferences_sum,2)/number_of_ratings) * (b_square_preferences_sum -pow(b_preferences_sum,2)/number_of_ratings))
            if denominator_value == 0:
                return 0
            else:
                r = numerator_value/denominator_value
                return r
            
def pearson_correlation(a,b):
 
    # To get both rated items
    both_rated = {}
    for i in dataset[a]:
        if i in dataset[b]:
            both_rated[i] = 1
 
    number_of_ratings = len(both_rated)
    
    # Checking for number of ratings in common
    if number_of_ratings == 0:
        return 0
 
    # Add up all the preferences of each user
    a_preferences_sum = sum([dataset[a][i] for i in both_rated])
    b_preferences_sum = sum([dataset[b][i] for i in both_rated])
 
    # Sum up the squares of preferences of each user
    a_square_preferences_sum = sum([pow(dataset[a][i],2) for i in both_rated])
    b_square_preferences_sum = sum([pow(dataset[b][i],2) for i in both_rated])
 
    # Sum up the product value of both preferences for each item
    product_sum_of_both_users = sum([dataset[a][i] * dataset[b][i] for i in both_rated])
 
 #Calculate the pearson score
    numerator_value = product_sum_of_both_users - (a_preferences_sum*b_preferences_sum/number_of_ratings)
    denominator_value = sqrt((a_square_preferences_sum - pow(a_preferences_sum,2)/number_of_ratings) * (b_square_preferences_sum -pow(b_preferences_sum,2)/number_of_ratings))
    if denominator_value == 0:
        return 0
    else:
        r = numerator_value/denominator_value
        return r
 
def check(user):
        
    def user_rat_reommendations(person):
       # Gets recommendations for a person by using a weighted average of every other user's rankings
       totals = {}
       simSums = {}
       rankings =[]
       for other in dfset:
        # don't compare me to myself
            if other == person:
                continue
            sim = pear_correlation(person,other)
 
        # ignore scores of zero or lower
            if sim<=0: 
                continue
            for item in dfset[other]:
 
            # only score courses i haven't seen yet
                if item not in dfset[person] or dfset[person][item] == 0:
 
                # Similrity * score
                    totals.setdefault(item,0)
                totals[item] += dfset[other][item]* sim
                # sum of similarities
                simSums.setdefault(item,0)
                simSums[item]+= sim
 
 # Create the normalized list
            rankings = [(total/simSums[item],item) for item,total in totals.items()]
            rankings.sort()
            rankings.reverse()
# returns the recommended items
            recommendataions_list = [recommend_item for score,recommend_item in rankings]
            return recommendataions_list


###location

    def user_loc_reommendations(person):
 
    # Gets recommendations for a person by using a weighted average of every other user's rankings
        totals = {}
        simSums = {}
        rankings =[]
        for other in dset:
        # don't compare me to myself
            if other == person:
                continue
            sim = prson_correlation(person,other)
 
        # ignore scores of zero or lower
            if sim<=0: 
                continue
            for item in dset[other]:
 
            # only score courses i haven't seen yet
                if item not in dset[person] or dset[person][item] == 0:
 
                # Similrity * score
                    totals.setdefault(item,0)
                    totals[item] += dset[other][item]* sim
                # sum of similarities
                    simSums.setdefault(item,0)
                    simSums[item]+= sim
 

 # Create the normalized list
        rankings = [(total/simSums[item],item) for item,total in totals.items()]
        rankings.sort()
        rankings.reverse()
# returns the recommended items
        recommendataions_list = [recommend_item for score,recommend_item in rankings]
        return recommendataions_list
 
    def user_age_reommendations(person):
 
    # Gets recommendations for a person by using a weighted average of every other user's rankings
        totals = {}
        simSums = {}
        rankings =[]
        for other in dataset:
        # don't compare me to myself
            if other == person:
                continue
            sim = pearson_correlation(person,other)
 
        # ignore scores of zero or lower
            if sim<=0: 
                continue
            for item in dataset[other]:
 
            # only score courses i haven't seen yet
                if item not in dataset[person] or dataset[person][item] == 0:
 
                # Similrity * score
                    totals.setdefault(item,0)
                    totals[item] += dataset[other][item]* sim
                # sum of similarities
                    simSums.setdefault(item,0)
                    simSums[item]+= sim
 

 # Create the normalized list
        rankings = [(total/simSums[item],item) for item,total in totals.items()]
        rankings.sort()
        rankings.reverse()
# returns the recommended items
        recommendataions_list = [recommend_item for score,recommend_item in rankings]
        return recommendataions_list
        
    
    return user_age_reommendations(user),user_rat_reommendations(user),user_loc_reommendations(user)

    
    
X= print(check(int(input('enter the user id '))))
    
    
