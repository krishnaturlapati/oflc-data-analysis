# OFLC Data Analysis
Analysis of H1-B disclosure data from the Office of Foreign Labor Certification. This dataset is interesting because it contains repeated observations of the same variables over 11 years. 

## Problem Definition

The objective is use the publicly available H1-B disclosure data to build a model that can predict the visa approval status of a H1-B application. The secondary objective is to interpret the results to find which factors influence the approval status. 

## Data Extraction 

The OFLC performance disclosure data can be obtained from this link https://www.foreignlaborcert.doleta.gov/performancedata.cfm. Save the 13 xlsx in a raw or a staging area, couple of columns contain embedded commas its recommened that save the xlsx to csv utf-8 format. Save the converted utf-8 csv's in a seperate folder. 

## Data Ingestion

The thirteen source files are in well defined csv's with headers, the most straight forward way is create a staging table in a RDBMS, I choose Postgres as my data sink. The source ddl's can be found here metadata_munging/ddl. Ingesting data in Postgres is very straight forward, we can leverage `COPY .. FROM ..` construct.   

## Data Wrangling/Cleaning   

Data cleaning is the most crucial part of any data science project. This data set is no different and is messy. Couple of challenges with this data set 

* Normalize field names across all thirteen years 
* Impute missing data
* The key observation prevailing wage or salary can be measured in hourly, weekly, biweekly, monthly or yearly format. 
* Derive additional fields as necessary 
* Create one core table for all data 

## Exploratory Data Analysis 

## Feature Engineering

## Base Line Modeling 

## Model Performance 

## HyperParameter Tuning 

## Model Evaluation

## Interpreation 

## Model Deployment





