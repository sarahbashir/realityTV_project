1. Have you already collected, or do you have access to, all of the data that you will need in order to complete your project? If not, please estimate the percentage of the data that you have, describe any issues that you are having, and what your plan is for getting the rest of the data.
 We have access to all two years of Twitter data. Since there is so much data, it is stored on a super computer at CMC (lambda server). This Twitter data is kept up to date via an already existing script on the server. Therefore, it is not neccessary to create a Twitter API. 
<br>
<br>
 We are interested in scraping Wikpedia for contestant information. This will give us information on the contestant's name, season (this gives us a general timeline of when to look for specific keywords), and episode information. Though we have not started this process, we anticipate it will take less than a week.

2. What is the single biggest unresolved issue you are having? Please describe it briefly, and what your plan is for resolving this issue.
The biggest issue of this project is working with the Twitter data. Since this dataset is so large, it is going to take a long time to go through it and narrow it down by location and tweet content. Thus far, we have spent 2 days running a script to download and parse the two years of data. We were able to capture a sample of data from every day, but not every hour in each day (due to limited disc space, we will ask for more). We will probably narrow down our search to the times where the show is airing. Our github repo has a small example of what our parsed data looks like.

3. What are the elements from outside of the course, if any, that you plan to incorporate into your project?
There are mahy components of this project that none of the group member's have limited experience in:
<ul><li>Learning how to use Apache Spark to process the data 
<li> Using Tableau for visualizing the data
<li> Webscraping wikpedia
<li> Using Jupyter notebook (Python) to process data
<li> Working with a large dataset on a supercomputer 
