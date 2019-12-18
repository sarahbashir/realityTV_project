## Group Members: 
Sarah Bashir: Project Manager, Director of Computation</br>
Ethan Ong:  Task Manager, Director of Research</br>
Lindsey Tam:  Facilitator, Reporter</br>

[Presentation](https://docs.google.com/presentation/d/1G7IIkiSaZm3E1TTuKNK8iYa26rkzdu8zbHCIuZDZ4VM/edit?usp=sharing)

## Title: Polarity of contestants on The Bachelor and The Bachelorette

## Purpose: 
To look at, through twitter data, how people feel about the shows The Bachelor and the Bachelorette. From our project, hopefully others can understand the varying sentiments on the program across the country. Additionally, some questions we need to address include: Is public sentiment generally positive or negative? Is it the same across all seasons?

## Data: 
We will use a Twitter API to get live data in the form of a JSON file. Using location information, we will isolate tweets to the geographic location of cities we are looking at (see below). Since the Twitter API only allows grants access for a limited timeframe (last 7 days) we will add supplemental data from an existing database of tweets starting from 2017. For Netflix data, we will be manually creating a dataset where the first column in the name of the NO, the second column is the audience score, and the third column is the critic score (both audience score and critic score is based on ratings from rotten tomato.  </br>
  
## Variables: 
* Text in the tweet</br>
* Which week of the show </br>
* Tweet Date: The date the tweet was made   </br>
* Location: The geographic coordinate where tweet was created </br>
* Degree of sentiment in word choice: The degree of word choice used among tweets about a NO (use TextBlob python package to gauge sentiment) </br>
* Show name and season: We will look at Bachelor and Bachelorette for seasons 2017, 2018, 2019

## End Product: 
We will be creating several visualization tools using Tableau or Shiny to be published on an online interface. On this interface, users can interact with the data clicking on certain NO content they would like to visualize. Each tab on our interface will correspond to a certain media piece, each containing several visualization types:</br>
* Polarity of words (x-axis: quantifying good vs. bad words, y-axis: frequency in which each word is used to describe each show) </br>
* Tweet Count overtime by state (x-axis: time, y-axis: tweet count) </br>
* Tweet polarity overtime by state </br>
The interactive component of this visualization is allowing users to compare states for each season. 

## [Visualizations](https://public.tableau.com/profile/ethan3912#!/vizhome/TheBacheloretteVisualizations/Dashboard1)

## [Presentation](https://docs.google.com/presentation/d/1G7IIkiSaZm3E1TTuKNK8iYa26rkzdu8zbHCIuZDZ4VM/edit?usp=sharing)
