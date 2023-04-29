<p align="center">
  <img src="Images/implementation.png" alt="logo-black">
</p>


## Table of Contents
- [Skeleton Model](#skeleton-model)
- [Three main challenges](#Three-main-challenges)
- [Challenge 1](#challenge-1)
- [Challenge 2](#challenge-2)
- [Challenge 3](#challenge-3)
- [Task Strategy](#task-strategy)


## Skeleton Model

Early on in the implementation phase, our lead developer produced a skeleton model of our game. This included three game states: 
- Start (including a start menu)
- In play state (including mechanics of a character jumping over simple blocks)
- Game Over (including a game over menu)

After some refactoring, parameterisation and code documentation (in the form of comments in the code), our lead developer explained the code to the rest of the team. From this exercise, the rest of the team learned how to use and update the game parameters, incorporate more design features, and adapt the movements of the character and the obstacles. This allowed other developers to enhance the user experience of the game, stylising menus, obstacles, and characters, and adding more features, such as player score and character selection concurrently. Before making any updates, we first made sure that everyone was up to date with the Git strategy: first making changes on a branch and then merging the updates back to main when a Kanban task was completed.

At this point we did our first qualitative evaluation.

## Three main challenges

During the game design phase we had identified that the three main challenges of our game were going to be:

1. Creating animations for the characters

2. Creating the fake quit scenario which was an important part of our design

3. Creating the global leader board which remembered the high scoring players every time the program is restarted

Once we had our concept, we focused on how to implement the game; collaboratively as a team. The first step of the implementation phase was compiling research around game design on the Processing platform. This involved completing the processing challenges set for us to do from the tutorials, each team member completed a different challenge to develop everyone's understanding of the Processing language. We also all familiarised ourselves with the Processing documentation online.

## Challenge 1
The online Processing documentation provided us with a solution to our initial challenge of creating animations for our game characters. This challenge was one of the first implementation tasks outlined on our Kanban board. By adapting example code from the documentation, we were able to transform a series of images into animations for the characters in our game. 


<p align="center">
  <img src="https://user-images.githubusercontent.com/115186584/235325864-f6975b98-27c1-41b4-a4c4-0f1ffd1804d8.jpg" alt="84a59261-57db-41b0-82ec-31d110df3e25">
</p>

```java
int frames = 4;
PImage[] character = new PImage[4];
for (int i = 0; i<4; i++){
  character[i]=loadImage("Images/catOne/Idle/" + i + ".tiff");
}
```

Our approach involved finding GIFs online that we wanted to use as characters, exporting the GIFs into .tiff formatted images frame by frame, and then removing the background of each image frame. In the code, we simply looped through the image frames to create the appearance of animation. The key challenge was to preserve the transparent background of the images while ensuring that the previously displayed image in Processing was removed before rendering the next animation frame.

<img width="978" alt="截屏2023-04-26 21 15 11" src="https://user-images.githubusercontent.com/115186584/234691968-1c8ca9e4-b2da-4f32-a2e4-ffb8e13ecfe6.png">

We continued to find and learn from online resources, such as Possessing games that shared similar concepts to ours, already published on Git. These resources were very useful for understanding how to implement the game mechanics for jumping, detecting obstacle collisions, and introducing the boss character which would move around on the screen.



## Challenge 2

The second challenge we were able to resolve was the challenge of the fake quit scenario. The fake-quit scenario was part of our game concept. The first three times the player lost the game and decided to quit rather than play again, the player would be sent back to the start of the game. This challenge was about manipulating the states of the game. Since we had a solid implementation of the different game states from our skeleton model it was fairly straightforward to implement. It involved introducing a counter variable that incremented every time the user selected the “quit” option rather than the “play again” option. If the counter was less than 3,  an alternate pop-up screen was displayed (shown below left) declaring that you must play again, and the game restarted from the beginning.

<p align="center">
  <img src="https://user-images.githubusercontent.com/115186584/234676427-f851c859-2d44-406b-b9a6-48fdb2717d82.gif" alt="fakequit">
</p>

## Challenge 3
The third challenge of implementing the global leaderboard was the largest of the three and the one we tackled last. Creating a leaderboard where the scores persist when the game is closed and reopened requires the manipulation of an external text file…
(to be finished)


## Task Strategy
Throughout the development process we took the approach of, initially, only implementing the minimum viable product for each task. This was intended as an agile methodology. We then refined features at the end of sprints based on the results of team discussion, user testing and evaluations. We found this to be a more efficient use of time as less time was spent rewriting code to update to new ideas and feedback. We used this process for the skeleton model, obstacle, boss, character selection and menus.
