<p align="center">
  <img src="Images/evaluation.png" alt="logo-black">
</p>


## Table of Contents
- [Qualitative Evaluation](#qualitative-evaluation)
- [Quantitative Evaluation](#quantitative-evaluation)
- [Code Testing](#cold-testing)


## Qualitative Evaluation
### Heuristic Evaluation
To understand the feedback provided, below are screenshots of the relevant scenes of our game at the time of evaluation. At this point, our game included basic functions such as character selection and jumping over simple obstacles. We did not consider the game to be a finished product but knew that the evaluation would provide useful feedback for the rest of the development process.
<br>
<p align="center">
  <img width="700" alt="截屏2023-05-01 17 43 01" src="https://user-images.githubusercontent.com/115186584/235489989-56989ccf-6830-462a-a789-eea3debfef13.png">
</p>
<br>
<br>

We chose three external game development experts to carry out the evaluation to see if we were breaking any of the 10 heuristic rules. The results of this evaluation can be seen in the table below:
<br>
<p align="center">
<img width="700" alt="截屏2023-05-01 17 42 24" src="https://user-images.githubusercontent.com/115186584/235489908-2459c5bb-9d30-4281-bb13-640c52bae812.png">
</p>
<br>
<br>
We found the first heuristic evaluation to be very useful as it highlighted problems which we could not immediately see as the developers of our own game. Below are strategies for solving the four highlighted issues:

**Issues 1 & 3 - Choosing characters**<br>
We needed to make the character selection more obvious to players and add some explanatory text to guide the user through the process. This required some redesign of the start page.
Making this change would add a lot of value to our game because currently most users did not know they could play as different characters.

**Issue 2 - Control the game**<br>
Easily overcome by adding instructions on how to move the character before the game begins.

**Issue 4 - Game Interface**<br>
could be resolved by adding some explanatory text before the game starts, however it conflicts with our twist of the “Fake Quit Scenario”.
This issue needed further evaluation.


## Think Aloud Evaluation
To understand the feedback provided, below are screenshots of the relevant scenes of our game at the time of this evaluation.
<br>
<p align="center">
    <img width="400" src="/Diagrams/ThinkAloud/01_Start.png" alt="hci"> 
    <img width="400" src="/Diagrams/ThinkAloud/02_CharacterSelection.png" alt="hci">
<img width="400" src="/Diagrams/ThinkAloud/03_DifficultySelection.png" alt="hci"> 
<img width="400" src="/Diagrams/ThinkAloud/04_LetsGo.png" alt="hci"> 
<img width="400" src="/Diagrams/ThinkAloud/05_InGame.png" alt="hci"> 
<img width="400" src="/Diagrams/ThinkAloud/06_GameOver.png" alt="hci"> 
<img width="400" src="/Diagrams/ThinkAloud/07_Can'tQuit.png" alt="hci"> 

</p>
<br>

We found four students with no experience in game development to perform our evaluation.
<br>
**Questions to be answered during the evaluation:**
- Is it clear the users should choose a character before playing?
- Is it clear how to play the game once it starts?
- Is the game enjoyable?

**The task:** play the game until the game ends.

Key points taken by the two observers of the the evaluation are categorised below:

**Game Aesthetic:**
>Menu design is nice, good aesthetic

>Character selection is fun (all participants chose a character)

>Text in the top left is distracting (position coordinates)


**Game Dynamics**
>It's quite fast paced to begin with but you soon get used to it

>It’s not obvious you have the ability to move left and right

>Fake quit scenario is harsh but funny


**Suggested Features**
>How do you actually quit?


**Potential Bugs**
>The collision detection with obstacles is sometimes a bit harsh/inaccurate.

>If a player navigates to the top right corner and jumps continuously, the player hovers and would never die – is this supposed to happen?


## Quantitative Evaluation
### System Usability Scale Evaluations

To understand the feedback provided, below are GIFs of our game on both difficulty levels:



We asked 10 users to play our game on both difficulty levels and complete an SUS questionnaire after each. 
Results show below:

<br>
<p align="center">
    <img width="700" src="https://user-images.githubusercontent.com/115186584/235492393-e06cdf48-9a37-40b6-bda3-afb662b5d7c3.png" alt="Normal Difficulty">
</p>
<br>


<p align="center">
    <img width="700" src="https://user-images.githubusercontent.com/115186584/235492375-1a0a9ca8-759c-4d29-83ab-d26ef4c78a6b.png" alt="Hard Difficulty">
</p>
<br>
<br>

For both SUS evaluations, the results were promising. Both results were significantly over the average of 68, meaning users find our game easy to use.

**Wilcoxon Signed Rank Test Results**

W test statistic = 0
<br>
<br>
Number of non-tied pairs (n) = 5
<br>
<br>
From the Wicoxon signed rank test, a calculated W value of 0 for a sample size of 10, implies there is a significant difference between the two two sets of results. However, because 5 pairs in our evaluation had no difference at all between the two difficulty levels, the number of non-tied pairs (number of pairs which actually affect the outcome of the calculation) is only 5. 
The [Wilcoxon critical values table](/Diagrams/WilcoxonTable/CtiticalValuesTable.png) shows that a significant difference cannot be achieved with an n value of 5 - hence the Wilcoxon signed rank test does not work for this data set. 
<br>
<br>
[This report](http://users.sussex.ac.uk/~grahamh/RM1web/WilcoxonHandoout2011.pdf) walks through the same issue we faced when doing the Wilcoxon Signed Rank Calculation.
<br>
<br>
There was deemed to be no difference in usability when our game is played on different difficulty modes. We suggest that this is a good thing. On the harder difficulty setting the game is faster, this requires more skill, but was not designed to be more difficult in terms of useability.


### NASA Task Load Index
We asked 10 users to play our game on both difficulty levels and complete an NASA TLX questionnaire after each. 
Results show below:

<br>
<p align="center">
    <img width="700" src="/Diagrams/NASA_TLX/NormalDiffuculty.png" alt="Normal Difficulty">
</p>
<br>


<p align="center">
    <img width="700" src="/Diagrams/NASA_TLX/HardDiffuculty.png" alt="Hard Difficulty">
</p>
<br>

The NASA TLX results for both difficulty levels were in the 30-49 range, which according to [this academic paper](https://www.researchgate.net/publication/333730333_The_Mental_Workload_Analysis_of_Staff_in_Study_Program_of_Private_Educational_Organization/fulltext/5d01325ea6fdccd130968682/The-Mental-Workload-Analysis-of-Staff-in-Study-Program-of-Private-Educational-Organization.pdf?origin=publication_detail) means the task load index is “somewhat high”. We consider this a success as it suggests our game is somewhat demanding but not too difficult for players to enjoy.

The NASA TLX hard difficulty result is 4 points higher than the normal difficulty result, suggesting the subjective mental workload is higher on the difficult mode. This result is good as the game was designed to be more taxing on the difficult mode and this evaluation confirms we have achieved that objective.

**Wilcoxon Signed Rank Test Results**

W test statistic = 4
<br>
<br>
Number of non-tied pairs (n) = 10
<br>
<br>
According to the [Wilcoxon critical values table](/Diagrams/WilcoxonTable/CtiticalValuesTable.png) with a W value of 4 and an n value of 10, the difference in the two sets of results is significant to an alpha value of 0.025. Which surpasses our aim to have a significant difference in difficulty to an alpha value of 0.05.

As a result of this evaluation we can definitively confirm that our game is more mentally demanding when played on hard mode as opposed to normal mode.


## Code Testing
