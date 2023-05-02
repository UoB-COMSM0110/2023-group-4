<p align="center">
  <img src="Images/evaluation.png" alt="logo-black">
</p>


## Table of Contents
- [Qualitative Evaluation](#qualitative-evaluation)
- [Quantitative Evaluation](#quantitative-evaluation)
- [Code Testing](#cold-testing)


## Qualitative Evaluation
### Heuristic Evaluation
The first evaluation of our game was an analytical heuristic evaluation, we chose three external game development experts to carry out the evaluation to see if we were breaking any of the 10 heuristic rules at this stage of the game development.

At this stage of game development, our game includes basic functions such as character selection and jumping over simple obstacles.

<p align="center">
  <img width="600" alt="截屏2023-05-01 17 43 01" src="https://user-images.githubusercontent.com/115186584/235489989-56989ccf-6830-462a-a789-eea3debfef13.png">
</p>

The results of this evaluation can be seen in the table below:
<img width="700" alt="截屏2023-05-01 17 42 24" src="https://user-images.githubusercontent.com/115186584/235489908-2459c5bb-9d30-4281-bb13-640c52bae812.png">
To understand the feedback provided, below are screenshots of the relevant scenes of our game at the time of evaluation. At this point, we did not consider the game to be a finished product but knew that the evaluation would provide useful feedback for completing the rest of the game features.

We found the first heuristic evaluation to be very useful as it highlighted problems which we could not immediately see as the developers of our own game.

Below is strategies for solving the four highlighted issues:

**Issues 1 & 3 - Choosing characters**
We decided that we needed to make the way we displayed the selected character more obvious, and probably some explanatory text to guide the user through choosing a character. This required some redesign of the start page. Making this change would add a lot of value to our game because currently most users did not know they could play as different characters.

**Issue 2 - Control the game**
Could easily be overcome by adding some instructions on how to move the character before the game begins.

**Issue 4 - Game Interface**
This issue could also be resolved with some explanatory text before the game starts, however it conflicts with our twist of the “Fake Quit Scenario” so this issue would need more careful consideration and further evaluation.


## Think Aloud Evaluation

At this stage of evaluation, we have addressed all known bugs and made significant improvements since the last evaluation. We have enhanced the interface and added additional instructional messages to improve user experience. 

<div style="text-align:center;">
    <img src="https://user-images.githubusercontent.com/115186584/235491121-73e1edd9-e482-445b-b35d-856d108f9152.gif" alt="hci">
</div>


We found four students with no experience in game development to perform our evaluation. 

**Questions to be answered during the evaluation:**
- Is it clear the users should choose a character before playing?
- Is it clear how to play the game once it starts?
- Is the game enjoyable?

**The task:** play the game until the game ends.

Key points taken by the two observers of the the evaluation are categorised below:

**Game Aesthetic:**
>Menu design is nice, good aesthetic
>Character selection is fun (all participants chose a character)
>Test in the top left is distracting (position coordinates)

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

We asked 10 users to play our game on both difficulty levels and complete an SUS form after each. 
Results show below:

<div style="text-align:center;">
    <img src="https://user-images.githubusercontent.com/115186584/235492393-e06cdf48-9a37-40b6-bda3-afb662b5d7c3.png" alt="Normal Difficulty">
</div>


<div style="text-align:center;">
    <img src="https://user-images.githubusercontent.com/115186584/235492375-1a0a9ca8-759c-4d29-83ab-d26ef4c78a6b.png" alt="Hard Difficulty">
</div>

For both SUS evaluations the results were promising. Both results were significantly over the average of 68 meaning users find our game easy to use.

## Code Testing
