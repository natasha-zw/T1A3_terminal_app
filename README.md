### Purpose and Scope 
This application is an interactive travel guide that will allow users to be able to learn more about Japanese food and famous attractions as well as provide useful phrases and cultural insights. The purpose of this application is to provide people a chance to learn more about a country they may not have had the chance to visit, especially due to the pandemic. Public health emergencies have the ability to affect the health and well-being of communities and individuals (Pfefferbaum & North 2020).  Long durations of confinement, inability to see friends and loved ones, and fear of the unknown trigger emotional stresses such as frustration, boredom, stress and in some cases depression (Pfefferbaum & North 2020). Anticipation of positive events has been shown to have a positive correlation to individual well-being (Luo et al., 2018). The anticipation process of future desired events was also shown to encourage positive relations with others (Edmondson & MacLeod, 2013) . This app will provide information on real places and fun facts with the purpose of giving the user something to look forward to once travel is accessible again. The app will direct the user to choose what topic they are interested in, engage them in mini quizzes that relate to important phrases in Japanese and possible travel situations. The quizzes allow the user to imagine themselves in a situation and how they would respond. It gives the user a chance to engage in positive anticipation and aims to instill excitement of the future. The answers to the quizzes would provide cultural insights and how best to respond to certain travel situations. 

### Features 
* Menu lists - The application will have two menu lists, that allow the user to pick out options which will lead them to different outcomes. This will utilise a conditional to lead them to a specific course of action. The first menu will allow the user to choose which category they are more interested in, food or famous attractions. This will lead them to the second menu where the user will choose out of 4 options in each category. 
* Quizzes - before the user gets to the given information they will activate a quiz time that involves questions that relate to either useful Japanese phrases or how to deal with certain situations when travelling. The quizzes will consist of either a multiple choice or true or false question. If the user gets the answer right, a congratulations message will be printed to the screen. If they get it wrong an explanation of the right answer will be printed. 
* User details - Before they get started the user will be asked to input their name to provide a customized experience. The user’s name will then be saved to a variable which will be used as necessary in the application (personalised quizzes and situations in trap card stage). Error handling will be used to ensure that a user puts in a valid input. 

### Help documentation 
#### Dependencies: 
This app is dependent on the following gems:
* TTY Prompt 
* Pastel
* TTY Font

It also uses the rspec gem for testing. 

#### How to use the app:
This application is an interactive travel guide to Japan. 
By navigating through the app you will be given a reccommendation on food to try and places to visit. 

To run the app you'll need to run the bash script: 
run_app.sh 
This will download the necessary dependencies and run the application. 

The application will ask you to type directly into the terminal. 
When this happens please enter the information and press enter to continue. 
There will also be sections where you will be asked to select an option.
Use the arrow keys to navigate throught the options and press enter to confirm your selection. 

The application also features quizzes which will test you on situations you may find yourself in as you travel.
The quizzes also feature handy Japanese phrases to use on your travels.

#### Command Line Arguments:
Command line arguments are a available for this application. 

* --a or --about : Prints information about the app, it's scope and purpose 

* --g or --gems : Prints the gems used in the application

* --h or --help : Prints help documentation

These can be used by running the app directly in the terminal (not the bash script):

`ruby app.rb [argument]`

### References
Edmondson, Olivia. J. H., and Andrew K. MacLeod. “Psychological Well-Being and Anticipated Positive Personal Events: Their Relationship to Depression.” Clinical Psychology & Psychotherapy, vol. 22, no. 5, 7 July 2013, pp. 418–425, 10.1002/cpp.1911. Accessed 9 Nov. 2018.

Luo, Y., Chen, X., Qi, S., You, X. and Huang, X. (2018). Well-being and Anticipation for Future Positive Events: Evidences from an fMRI Study. [online] Frontiers in Psychology. Available at: https://www.frontiersin.org/articles/10.3389/fpsyg.2017.02199/full. [Accessed 23 Sep. 2021].

Pfefferbaum, B. and North, C.S. (2020). Mental Health and the Covid-19 Pandemic. New England Journal of Medicine, [online] 383(6). Available at: https://www.nejm.org/doi/full/10.1056/NEJMp2008017. [Accessed 23 Sep. 2021].