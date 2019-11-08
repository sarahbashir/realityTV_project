## Group Members: 
Sarah Bashir: Project Manager, Director of Computation</br>
Ethan Ong:  Task Manager, Director of Research</br>
Lindsey Tam:  Facilitator, Reporter</br>

## Title: Polarity of Original Netflix Content

## Purpose: 
Do you and your friends have radically different opinions on a television show on Netflix? Our project covers a topic of interest because we are interested in seeing whether different cities in the United States express different trends towards certain Netflix orginals (NO). From our project, hopefully others can understand the varying sentiments on television shows across the country. Additionally, some questions we need to address include: Does positive public sentiment equate to higher viewer ratings? What keywords should be considered as positive versus negative public sentiment?

## Data: 
We will use a Twitter API to get live data in the form of a JSON file. Using location information, we will isolate tweets to the geographic location of cities we are looking at (see below). Since the Twitter API only allows grants access for a limited timeframe (last 7 days) we will add supplemental data from an existing database of tweets starting from 2017. For Netflix data, we will be manually creating a dataset where the first column in the name of the NO, the second column is the audience score, and the third column is the critic score (both audience score and critic score is based on ratings from rotten tomato.  </br>
  
## Variables: 
* Frequency of word choice: How often a word is used among tweets about a particular NO</br>
* Content with emoji in text: The string of text in the content of the tweet  </br>
* Tweet Date: The date the tweet was made   </br>
* Emoji Presence: 1 or 0 value, indicating presence (1) of emjoi or no emoji (0)  </br>
* Emojis Used: List of all used emjois stored as text </br>
* Location: The geographic coordinate where tweet was created </br>
* Degree of sentiment in word choice: The degree of word choice used among tweets about a NO (use TextBlob python package to gauge sentiment) </br>
* Time of sentiment: Only tweets between the release and decision for renewal date for a NO will be observed </br>
* Release year: Many shows broadcasted on Netflix are older collections, however,  some are newly released on Netflix </br>
* Audience rating of NO: integer from 0 to 100  </br>
* Critic rating of NO: integer from 0 to 100  </br>


## End Product: 
We will be creating several visualization tools using either Tableau or Shiny to be published on an online interface. On this interface, users can interact with the data clicking on certain television shows they would like to visualize. Each tab on our interface will correspond to a certain television show, each containing several visualization types:</br>
* Polarity of words (x-axis: quantifying good vs. bad words, y-axis: frequency in which each word is used to describe each show) </br>
* Quantifying sentiment based on weighting frequency of word usage (i.e. quantify the word offensive as -1 and the word amazing as 1, then taking the quantified sentiment would be 0)</br>
* Tweet Count overtime (x-axis: time, y-axis: tweet count) </br>
* Emoji Frequency overtime: A chart or a line graph of commonly used emoji  </br>
* Polarity proportion: A pi chart comparing positive tweets, neutral tweets, and negative tweets.  </br>
The interactive component of this visualization is allowing users to compare cities for each television show. We plan to look at Los Angeles, New York, Dallas, Miami, Las Vegas, Seattle, and Chicago
