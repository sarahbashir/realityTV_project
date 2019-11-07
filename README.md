## Group Members: 
Sarah Bashir: Project Manager, Director of Computation</br>
Ethan Ong:  Task Manager, Director of Research</br>
Lindsey Tam:  Facilitator, Reporter</br>

## Title: Polarity of Netflix TV Shows

## Purpose: 
Do you and your friends have radically different opinions on a television show? Our project covers a topic of interest because we are interested in seeing whether different cities in the United States express different trends towards certain television shows. From our project, hopefully others can understand the varying sentiments on television shows across the country. Additionally, some questions we need to address include: Does positive public sentiment equate to higher viewer ratings? What keywords should be considered as positive versus negative public sentiment?

## Data: 
We will use a Twitter API to get live data in the form of a JSON file. Using location information, we will isolate tweets to LA county. Since the Twitter API only allows grants access for a limited timeframe (last 7 days) we will add supplemental data from an existing database of tweets starting from 2017. For netflix TV show data, we will be using data from Kaggle. There are almost 500 TV shows (rows) and 7 columns. For our purposes, the only columns we are interested in is user rating score and release year. </br>
url: https://www.kaggle.com/chasewillden/netflix-shows
  
## Variables: 
* Frequency of word choice: How often a word is used among tweets about a particular TV show </br>
* Degree of sentiment in word choice: The degree of word choice used among tweets about a particular TV show (use TextBlob python package to gauge sentiment) </br>
* Time of sentiment: Only tweets between the release and decision for renewal date for particular TV show season will be observed </br>
* Netflix Shows (old vs. new): Many shows broadcasted on Netflix are older collections, however,  some are newly released on Netflix</br>
* Current season of television show: We may want to explore whether a show is in its pilot season or not has an impact on show success</br>
* Ratings of Show: Viewer ratings by Netflix show (frequency of ratings?)

## End Product: 
We will be creating several visualization tools using either Tableau or Shiny to be published on an online interface. On this interface, users can interact with the data clicking on certain television shows they would like to visualize. Each tab on our interface will correspond to a certain television show, each containing several visualization types:</br>
* Polarity of words (x-axis: quantifying good vs. bad words, y-axis: frequency in which each word is used to describe each show) </br>
* Quantifying sentiment based on weighting frequency of word usage (i.e. quantify the word offensive as -1 and the word amazing as 1, then taking the quantified sentiment would be 0)</br>
* Ratings overtime (x-axis: time, y-axis: ratings) </br>
* Tweet Count overtime (x-axis: time, y-axis: tweet count) </br>
The interactive component of this visualization is allowing users to compare cities for each television show.
