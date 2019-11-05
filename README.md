## Group Members: 
Sarah Bashir: </br>
Ethan Ong:  </br>
Lindsey Tam:  </br>

## Title: Predicticting Show Renewal

## Purpose: 
Have you ever experienced the feeling of your favorite show being cancelled and not knowing why? Our project covers a topic of interest because we are interested in seeing whether Los Angeles as the largest media hub in the world can predict whether a television show is renewed. From our project, hopefully others can understand whether Los Angeles county sentiment accurately reflects trends in show success. Additionally, some questions we need to address include: Does positive public sentiment equate to higher viewer ratings? What keywords should be considered as positive versus negative public sentiment?

## Data: 
We will use a Twitter API to get live data in the form of a JSON file. Using location information, we will isolate tweets to LA county. Since the Twitter API only allows grants access for a limited timeframe (last 7 days) we will add supplemental data from an existing database of tweets starting from 2017. For TV show data, we will be manually creating a csv file using information from Google. This is because existing datasets on TV shows are typically grouped by streaming service, so manually creating a dataset will give us greater flexibility in choosing the TV shows we want to work with. The columns will consist of the TV show name and years (ie 2017, 2018, 2019), where a 1 corresponds to a renewal and and 0 corresponds to no renewal.
  
## Variables: 
* Frequency of word choice: How often a word is used among tweets about a particular TV show </br>
* Emojis: The emojis used among tweets about a particular TV show </br>
* Degree of sentiment in word choice: The degree of word choice used among tweets about a particular TV show (use TextBlob python package to gauge sentiment) </br>
* Time of sentiment: Only tweets between the release and decision for renewal date for particular TV show season will be observed </br>
* Prime time television shows: Only shows broadcasted between 8-11PM will be considered </br>
* Current season of television show: We may want to explore whether a show is in its pilot season or not has an impact on show success
## End Product: 
We will be creating a predictive model whose input is the quantity and sentiment of tweets in LA county and whose output is a yes / no answer the question of whether or not the show will be renewed. We will be creating a visualization for the model (using Tableau or PowerBI). Each TV show will have its own tab that contains a graph of the tweets overtime, looking at recurrings words and their sentiments.
