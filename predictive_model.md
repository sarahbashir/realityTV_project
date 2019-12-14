# Pseudo Code for creating a classification model

## Use Scikit learn to implement Logisitic Regression, Logisitic Regression CV, GaussianNB, and LDA

Current dataset:
Tweet id, tweet_text, contestant

Global_dataset = pd.Dataframe() // empty dataframe

For every season i:
For j in range(500): // how many times we bootstrap each season
	sample 2000 tweets
	Sentiments = {}
	for each tweet in the sample:
		find out which contestant it's talking about
		find out what the sentiment for that tweet is
		add it to the average for that contestant // Sentiments[contestant] += sentiment
	
make averages for each contestant // Sentiments[contestant] /= 2000
Assign contestant IDs // should be assigned in some scrambled order. I think use np.random.shuffle or something to shuffle array order
make a row with format [contestant_i_avg_sentiment, season_num, id_of_winner]
Append that row to Global_dataset


// Should have 500 * num_seasons rows in global_dataset
// global_dataset should look like this:
// Columns = contestant_0_avg_sentiment, contestant_0_total_tweets, contestant_1_sentiment, contestant_1_total_tweets, n_season, id_winner
[.4, -.2, 1, 0] // average sentiments across a random sample of 2000 tweets. might be season 1
[-.3, .1, 1, 1] // average sentiments across a random sample of 2000 tweets. might be season 1
[.3, .1, 3, 1] // average sentiments across a random sample of 2000 tweets. might be season 4

// TRAIN_INPUT = [
[.4, -.2]
[-.3, .1]
]

// TRAIN_OUTPUT = [
[0]
[1]
]

INPUT = global_dataset[Contestant_0_avg_sentiment, Contestant_1_sentiment]
OUTPUT = global_dataset[id_winner]

x_train, y_train, x_test, y_test = sklearn.model_selection.train_test_split(INPUT, OUTPUT, train_size=.9) // 

Model = sklearn.something_classifier()
model.fit(x_train, y_train)
Score = model.predict(x_test, y_test) 


