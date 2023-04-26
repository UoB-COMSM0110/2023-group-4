# 2023-group-4
<p align="center">
  <img src="https://user-images.githubusercontent.com/115186584/234676499-1ae72f70-5714-48dd-84e0-f50ff50b7a88.png" alt="logo-black">
</p>


## Table of Contents
- [Introduction](#introduction)
- [Requirements](#requirements)
  - [Use case diagram](#use-case-diagram)
  - [User story](#credits)
  - [Ideation process](#ideation-process)
- [Design](#design)
- [Implementation](#implementation)
- [Evaluation](#evaluation)
- [Process](#process)
- [Conclusion](#conclusion)
- [Documentation of code](#documentation-of-code)
- [Acknowledgements](#acknowledgements)


---

# INTRODUCTION
In this game, the player takes on the role of a brave cat that must navigate through a series of obstacles to reach its ultimate goal. With quick reflexes and agility, the cat must leap and dodge its way through daily challenges and unexpected twists of fate.
Throughout its journey, the cat faces new obstacles. However, the cat's greatest challenge is a copycat that threatens to steal its place in life's grand design.

<p align="center">
  <img src="https://user-images.githubusercontent.com/115186584/234675414-1145062c-2e77-44c9-b8a0-42c76d686a2d.gif" alt="preview">
</p>

While the cat's attempts to overcome this challenge may initially result in defeat, quitting is not an option. Every time the player tries to quit, they are met with even greater challenges. The game tests the player's determination and resilience as they strive to triumph over their relentless nemesis.

<p align="center">
  <img src="https://user-images.githubusercontent.com/115186584/234676427-f851c859-2d44-406b-b9a6-48fdb2717d82.gif" alt="fakequit">
</p>


Join the cat on its journey through life and experience the thrill of the chase in this adventure game. With its heart-pounding gameplay and challenging obstacles, this game is sure to test your skills and keep you on the edge of your seat.
Our game is based on the classic T-Rex jumping game built into google chrome. The novel twist is the boss character “Copy Cat” who is a moving obstacle who must be defeated by taking a blow to the head.


Another novel aspect of the game is the entire re-design of the aesthetics and narrative.

---

# Requirements

## Early Stage Design

Initially we had two main game concepts, the T-Rex jumping style platform game, featured on the Google Chrome browser, and Baba is you, a puzzle based top-down game. So we each voted for our preferred game to develop, results shown below:

<img src="/Diagrams/GameVote.png" width="550" height="200"><br>

After discussing lots of questions and concepts surrounding both ideas, ultimately we unanimously decided on developing a jumping style game for several reasons: 

Firstly, jumping games are fun, intuitive and easy for everyone to play.
Secondly, we realised that designing many levels for a platform based game could be quite time consuming, in terms of creative and programming resources. A jumping game where the principle is similar throughout was deemed to be the more sensible choice.
Lastly, we had lots of initial thoughts on how to incorporate an interesting narrative for a jumping style game. Incorporating one of our favourite internet memes (Nyan-Cat) and portraying the obstacles as being similar to overcoming adversities in life. Our game would not just be a jumping game but also a “game of life”.

<p align="center">
  <img src="https://user-images.githubusercontent.com/115186584/234689697-6ecf1f8d-f2ec-44e4-b69c-aa45948c992e.gif" alt="NyanCat">
</p>

## Ideation Process
We knew our game concept, but we were yet to come up with a twist for the game. We wondered if it would be engaging enough for players to simply jump over a number of obstacles in order to gain a high score. After a quick brainstorming session we arrived at our twist, we would introduce a new character, “Copy Cat”, Nyan-Cats nemesis who was the biggest obstacle of all. We thought of Copy Cat as being a boss character, after clearing a certain number of obstacles Nyan-Cat would face a much bigger challenge as they would have to defeat this boss before they could proceed any further in this “game of life”. 

Copy Cat would be defeated if the player manages to jump on Copy Cats head. In order to dodge and battle this boss character we decided that we would also need the character to be able to move left and right as well as jump up and down, therefore our game character would have more freedom of movement than in a traditional jump based game.

As a result of brainstorming for a twist we actually came up with a second twist, the fake quit scenario. The player would not be able to quit the game the first three times they tried to quit after losing. This twist came with a tagline of “you cannot quit the game of life!”.

One of the key steps in our ideation process was thinking about the flow of the game, we continued to refer to our use-case diagram and user stories (which we had started very early on) and updated them to incorporate the new twist. We wanted to ensure that our game would be easy to understand and play, while still providing a fun and challenging experience for the user.

At this point we had a game concept with a quirky narrative, a main character and a twist. We were now in a position to make a paper prototype of how the game was going to work. Below is a video of our initial paper prototype:

<p align="center">
  <b>Click the image below to watch the video:</b><br>
  <a href="https://www.youtube.com/watch?v=H8TkaA0i4RQ">
    <img src="https://img.youtube.com/vi/H8TkaA0i4RQ/0.jpg" alt="YouTube Video">
  </a>
</p>

## Paper Prototype
The paper prototype involved putting our ideas into practice and seeing how the game actually played. This stage was crucial in helping us identify any issues or areas for improvement, which we were then able to address and refine. Some design decisions we made after creating the paper prototype were:

To represent obstacles as representations of life's obstacles (bills, deadlines, wake up call etc..) and not confuse our game with the aesthetic of By Super Mario world.

<div align="center">

![obstacles](https://user-images.githubusercontent.com/115186584/234699042-85274579-3e91-49ca-a159-88e5e6103487.gif)

</div>

If Nyan-Cat defeated the Copy Cat boss they would be rewarded with a rainbow trail. This would give the player a goal to aim for, aside from just aiming to get a high score. (change that later)
We could include the Nyan-Cat theme tune playing on a loop while the game was in play, this is a memorable characteristic associated with the Nyan-Cat meme.

In conclusion, our ideation process was an iterative and collaborative effort that involved a series of discussions and refinements to arrive at our final concept. By considering various factors such as feasibility and player experience, we were able to create a game that we believe will be enjoyable and engaging for players


## USE CASE DIAGRAM

![UseCase4](https://user-images.githubusercontent.com/115186584/234690970-902fc3c5-fa82-404a-8788-e5ccccc5ef87.png)

## User Stories:
As a user, I want to mute the game music, so that I am less distracted when playing the game.
As a user, I want to change character, so that I can play as my preferred character.
As a user, I want to read the acknowledgements, so that I can find out who made this awesome game.
As a user, I want to change the game difficulty, so that I am being challenged the correct amount.
As a user, I want to view the highscores, so that I can see who has performed the best at this game.
As a user, I want to jump over obstacles, so that I don’t lose the game.
As a user, I want to quit the game, so that I can exit without killing my character.
As a user, I want to restart the game, so that I can improve my score (and maybe get on the leaderboard)
As a user, I want to quit the game, so that I can do other things


---

## Design

 System architecture. 

When designing our system architecture, we took the approach that it would be better to have a higher number of discrete classes, each responsible for doing a specific functions well, rather than having a smaller number of classes, each performing for lots of tasks.
 
 Class diagrams, 
 
 ![ClassDiagram](https://user-images.githubusercontent.com/115186584/234691242-91ad3357-0b8d-488b-a6d0-d98b9b9a026a.jpeg)

 
 behavioural diagrams.
 
 ![SequenceDiagram3](https://user-images.githubusercontent.com/115186584/234691294-15f4200f-aea6-4d1a-a57e-96b55aa8abfc.png)
(Describe the sequence diagram)
---

## Implementation

 Describe implementation of your game, in particular highlighting the three areas of challenge in developing your game.
 
 
During the game design phase we had identified that the three main challenges of our game were going to be:

1. Creating animations for the characters

2. Creating the fake quit scenario which was an important part of our design

3. Creating the global leader board which remembered the high scoring players every time the program is restarted

Once we had our concept, we focused on how to implement the game; collaboratively as a team. The first step of the implementation phase was compiling research around game design on the Processing platform. This involved completing the processing challenges set for us to do from the tutorials, each team member completed a different challenge to develop everyone's understanding of the Processing language. We also all familiarised ourselves with the Processing documentation online.

The online Processing documentation provided us with a solution to our initial challenge of creating animations for our game characters. This challenge was one of the first implementation tasks outlined on our Kanban board. By adapting example code from the documentation, we were able to transform a series of images into animations for the characters in our game. Our approach involved finding GIFs online that we wanted to use as characters, exporting the GIFs into .tiff formatted images frame by frame, and then removing the background of each image frame. In the code, we simply looped through the image frames to create the appearance of animation. The key challenge was to preserve the transparent background of the images while ensuring that the previously displayed image in Processing was removed before rendering the next animation frame.



<pre>
```java
int frames = 4;
PImage[] character = new PImage[4];
for (int i = 0; i<4; i++){
  character[i]=loadImage("Images/ratOne/Idle/" + i + ".tiff");
}
```
</pre>



<img width="978" alt="截屏2023-04-26 21 15 11" src="https://user-images.githubusercontent.com/115186584/234691968-1c8ca9e4-b2da-4f32-a2e4-ffb8e13ecfe6.png">

We continued to find and learn from online resources, such as Possessing games that shared similar concepts to ours, already published on Git. These resources were very useful for understanding how to implement the game mechanics for jumping, detecting obstacle collisions, and introducing the boss character which would move around on the screen.

### Skeleton Model

Early on in the implementation phase, our lead developer produced a skeleton model of our game. This included three game states: 
- Start (including a start menu)
- In play state (including mechanics of a character jumping over simple blocks)
- Game Over (including a game over menu)

After some refactoring, parameterisation and code documentation (in the form of comments in the code), our lead developer explained the code to the rest of the team. From this exercise, the rest of the team learned how to use and update the game parameters, incorporate more design features, and adapt the movements of the character and the obstacles. This allowed other developers to enhance the user experience of the game, stylising menus, obstacles, and characters, and adding more features, such as player score and character selection concurrently. Before making any updates, we first made sure that everyone was up to date with the Git strategy: first making changes on a branch and then merging the updates back to main when a Kanban task was completed.

At this point we did our first qualitative evaluation.

### Challenge 2

The second challenge we were able to resolve was the challenge of the fake quit scenario. The fake-quit scenario was part of our game concept. The first three times the player lost the game and decided to quit rather than play again, the player would be sent back to the start of the game. This challenge was about manipulating the states of the game. Since we had a solid implementation of the different game states from our skeleton model it was fairly straightforward to implement. It involved introducing a counter variable that incremented every time the user selected the “quit” option rather than the “play again” option. If the counter was less than 3,  an alternate pop-up screen was displayed (shown below left) declaring that you must play again, and the game restarted from the beginning.

<p align="center">
  <img src="https://user-images.githubusercontent.com/115186584/234676427-f851c859-2d44-406b-b9a6-48fdb2717d82.gif" alt="fakequit">
</p>

### Challenge 3
The third challenge of implementing the global leaderboard was the largest of the three and the one we tackled last. Creating a leaderboard where the scores persist when the game is closed and reopened requires the manipulation of an external text file…
(to be finished)


### Task Strategy
Throughout the development process we took the approach of, initially, only implementing the minimum viable product for each task. This was intended as an agile methodology. We then refined features at the end of sprints based on the results of team discussion, user testing and evaluations. We found this to be a more efficient use of time as less time was spent rewriting code to update to new ideas and feedback. We used this process for the skeleton model, obstacle, boss, character selection and menus.

---

## Evaluation

One qualitative evaluation (your choice)

One quantitative evaluation (of your choice)

Description of how code was tested.

---

# Process

### Git
One of the first things we did as a team was to organise our Git page and decide on a folder structure. Having an initial discussion about creating folders for code, videos, Diagrams , meeting minutes, research etc… which saved us time in the long run as it was clear to everyone where to upload their contributions, or where to find any materials on our git page.
Then we ensured everyone knew the basics of Git branches and the concept of merging to main so that it was possible to concurrently work on the project code and avoid any disasters like accidentally saving over someone else's work.
Early on in the project we did have some git problems. There were several merge conflicts we had to overcome in the beginning, we had to manually overcome some conflicts as some branches were not merged for a long time and were much further ahead than main. We learnt from these initial mistakes and from then on would check out a branch for every assigned task and merged to main more regularly. We also would checkout new branches for bug 
fixing later on in the process.

### The Kanban Board
The Kanban board was the most useful tool we used as a team. We created a Kanban board on the web application Trello and added all the team members early on in the project. The main uses of the Kanban board became apparent during the implementation stage of the project, when the bulk of the coding was being done. The majority of tasks were set during meetings, but individuals were also allowed to assign tasks to themselves/others as and when necessary. On top of being an organisational tool, it was also a good source of motivation for the team. As members moved their assigned tasks around from “Backlog” all the way through to “Done”. 
[link to kanban board images]

### Sprints
Our sprints were two weeks long. We chose a sprint length of two weeks as we were not working full time on this project due to other work commitments. At the beginning of each sprint we would assign Kanban tasks. We practised the playing poker method to estimate the time and effort each task, based on the collective knowledge of the team. After several weeks we had a rough idea of our team velocity (around 10 tasks per sprint). Having an idea of our team velocity was useful for determining how many of the features of our game we would have time to implement. We considered factors external to the project, knowing our team velocity would decrease during the April exam period and so we made allowances for this when assigning tasks during this period.

At the end of each sprint we would test the new features which had been implemented, each member of the team would play the game and report back any feedback and suggestions. This was a good form of regular testing and highlighted any new bugs. Bug fixing tasks were added to the tasks for the next sprint.

### Team Meetings
As a team we usually met every week to discuss the development of the game and assign tasks. We adopted several different approaches for team meetings. 

<p align="center">
  <img src="https://user-images.githubusercontent.com/115186584/234696293-f8709d2f-2938-4d3a-8a08-ee3404cd3bf4.gif" alt="team">
</p>


In the early phases of design we would meet as a whole team so everyone could contribute to the ideation process and ensure that we were all on the same page in terms of the fundamental game concepts.
As the development of the game was underway we took a more agile approach using the Scrum project management style. We conducted short 10 minute meetings after Software Engineering workshops where the Scrum Master proposed topics for discussion and we updated our Kanban board according to the newly completed/assigned tasks. During  the development phase we also met in sub groups to discuss details relevant to specific tasks and team members, based on the tasks assigned on the Kanban board. The subgroup meetings worked autonomously from the rest of the group, the team trusted the outcomes decided by the relevant team members.  
On Top of these meetings, on the day we formed our team we created a WhatsApp group as a means of informal communication. We use the group to arrange meetings, share spontaneous ideas, and ask day to day questions.
Team Roles
By the time we started the development phase of the project it was clear that everyone had assumed roles which suited their skills and interests. We thought it would be a good idea to formalise these positions for the duration of the project. Each team member played a crucial role in our project's success.

<b>Lead Developer</b>, Ivan was responsible for developing the game's skeleton and details, ensuring a solid foundation for the gameplay. 

<b>Front End Developer</b>, Mike, skillfully handled the interface design and overall look, creating an engaging and visually appealing experience for users.

<b>Back End Developer</b>, Marcin, worked closely with Ivan to develop the game's back end, ensuring seamless functionality and performance.

<b>Creative Lead</b>, Antalya, generated the game's core ideas and concepts, providing innovative designs that set our project apart.

<b>Administrator</b>, Kate, effectively managed the entire process, organising meetings for regular updates and facilitating communication between team members. 

By understanding and utilising the strengths of each team member, we were able to create a successful and enjoyable project, learning valuable lessons for future collaborations.

### Reflection
As a group, we worked well together. We were fortunate that we had a good mix of skills and interests, so everyone in the team got to work on what they enjoyed most. This fortune was also partly due to our agile working strategy and strong communication. Regular meetings played a crucial role in keeping the team aligned and focused on our goals. One of the reasons we worked so well as a team is because once we had a game concept, the lead developer implemented the framework of our minimum viable product, following the structure of our Class Diagram in a way which was easy to update and easy for others to understand. After this was achieved, it was straightforward for other developers to work simultaneously on the code, refining the mechanics of the game, updating the game aesthetics, and enhancing all things user experience related.

---

## Conclusion

Reflect on project as a whole. Lessons learned. Reflect on challenges. Future work.

Quality of report writing, presentation, use of figures and visual material (5%)

## Documentation of code

Individual contribution. Provide a table of everyone's contribution, which may be used to weight individual grades. We expect that the contribution will be split evenly across team-members in most cases. Let us know as soon as possible if there are any issues with teamwork as soon as they are apparent.


--

## Acknowledgements

#### Audio
- Fluffing a Duck Kevin MacLeod (incompetech.com)
Licensed under Creative Commons: By Attribution 3.0 License
http://creativecommons.org/licenses/by/3.0/
Music promoted by https://www.chosic.com/free-music/all/
