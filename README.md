<p align="center">
  <img src="https://user-images.githubusercontent.com/115186584/234676499-1ae72f70-5714-48dd-84e0-f50ff50b7a88.png" alt="logo-black">
</p>



# 2023-group-4
![GroupPic](/Group_Pics/Group4.jpeg)


## TEAM MEMBERS
<img src="/Diagrams/GameVote.png" width="550" height="200"><br>

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

## INTRODUCTION
Initially we had two main game concepts, <b>the T-Rex jumping style game</b> (featured on the Google Chrome browser) and <b>Baba is you</b>, a puzzle based platform game. So we each voted for out preferred game to develop, results shown below:<br/>


After discussing lots of questions and concepts surrounding both ideas, ultimately we unanimously decided on developing a jumping style game for several reasons:

- Firstly, jumping games are fun, intuitive and easy for everyone to play.
- Secondly, we realised that designing many levels for a platform based game could be quite time consuming, in terms of creative and programming resources. A jumping game where the principle is similar throughout was deemed to be the more sensible choice.
- Lastly, we had lots of initial thoughts on how to incorporate an interesting narrative for a jumping style game. Incorporating one of our favourite internet memes (Nyan Cat) and portraying the obstacles as being similar to overcoming adversities in life. Our game would not just be a jumping game but also a “game of life”.

<p align="center">
  <img src="https://user-images.githubusercontent.com/115186584/234675414-1145062c-2e77-44c9-b8a0-42c76d686a2d.gif" alt="preview">
</p>


Now we knew our game concept, but we were yet to come up with a significant twist for the game. We wondered if it would be engaging enough for players to simply jump over a number of obstacles in order to gain a high score. After a quick brainstorming session we arrived at our twist, we would introduce a new character, “Copy Cat”, Nayancats nemesis who was the biggest obstacle of all. We thought of Copy Cat as being a boss character, after clearing a certain number of obstacles Nyancat would face a much bigger challenge as they would have to defeat this boss before they could proceed any further in this “game of life”. Copy Cat would be defeated if the player manages to jump on Copy Cats head. In order to dodge and battle this boss character we decided that we would also need the character to be able to move left and right as well as jump up and down, therefore our game character would have more freedom of movement than in a traditional jump based game.

As a result of brainstorming for a twist we actually came up with a second twist, the fake quit scenario. The player would not be able to quit the game the first three times they tried to quit after losing. This twist came with a tagline of “you cannot quit the game of life!”.

<p align="center">
  <img src="https://user-images.githubusercontent.com/115186584/234676427-f851c859-2d44-406b-b9a6-48fdb2717d82.gif" alt="fakequit">
</p>


One of the key steps in our ideation process was thinking about the flow of the game, we continued to refer to our use-case diagram and user stories (which we had started very early on) and updated them to incorporate the new twist. We wanted to ensure that our game would be easy to understand and play, while still providing a fun and challenging experience for the user.

At this point we had a game concept with a quirky narrative, a main character and a twist. We were now in a position to make a paper prototype of how the game was going to work. Below is a video of our initial paper prototype:

<p align="center">
  <span style="font-size: larger;">Click the image below to watch the video:</span><br>
  <a href="https://www.youtube.com/watch?v=H8TkaA0i4RQ">
    <img src="https://img.youtube.com/vi/H8TkaA0i4RQ/0.jpg" alt="YouTube Video">
  </a>
</p>


---

##  DESIGN OF THE GAME (INTRODUCTION)
"In a world full of challenges and obstacles, one brave cat must journey through life to reach its ultimate goal. Armed with agility and quick reflexes, the cat must leap and dodge its way through the trials and tribulations of existence. From navigating the twists and turns of daily life to overcoming the unexpected twists and turns of fate, this cat will stop at nothing to reach its destiny.

With each leap and bound, the cat is faced with new obstacles - from angry dogs and raging rivers to treacherous cliffs and endless pits. And as the journey grows increasingly difficult, the cat must confront its greatest challenge of all: a cunning copycat that threatens to steal its place in life's grand design.

Despite its best efforts, the cat is always defeated by the copycat. But here's the catch: quitting is not an option. For life is a journey, and quitters never win. Every time the player attempts to quit the game, they are met with even greater challenges, as wave after wave of attacking cats surge forward.

Will the cat ever triumph over its relentless nemesis? Or will it be trapped in this endless cycle of defeat and renewal, forced to face its trials time and time again? Join the cat on its journey through life and experience the thrill of the chase in this heart-pounding adventure that will test the limits of your determination and resilience."

## Intro to the game.
- The player controls a cat that must navigate through life and overcome various obstacles.

- The player must defeat a cunning copycat in order to progress, but the copycat always wins.

- Quitting is not an option, as quitting is seen as a failure in life.

- Every time the player attempts to quit the game, they are met with even greater challenges in the form of attacking cats.

- The player is trapped in an endless cycle of defeat and renewal, forced to face the trials and obstacles of life time and time again.

- The game tests the player's determination and resilience, and presents a metaphor for the challenges and obstacles of life.

---

## Requirements
Use case diagrams, user stories. Early stages design. Ideation process. How did you decide as a team what to develop?

### USE CASE DIAGRAM

<img width="727" alt="截屏2023-02-13 19 52 58" src="https://user-images.githubusercontent.com/115186584/218561372-0009921c-1748-4dac-a997-0f1116b3f5fa.png">

### User Stories:
- As a game player, I can click start so that I can start the game.
- As a game player, I can click on any of the characters so that I can choose the character I want to play with.
- As a game player, I can see the character I chose so that I can know which character I am playing with.
- As a game player, I can use my mouse to click on easy or hard buttons so that I can choose the difficulty I want to play with.
- As a game player, I want to see the instructions so that I can know how to play the game.
- As a game player, I can press up tab to jump over the obstacles coming up randomly so that I can get a higher score.
- As a game player, I can get more score as time passes by so that I can win the game.
- As a game player, I want to see a game over page when I bump into an obstacle so that I can know that I lose the game.
- As a game player, I want to be able to play again when the game is over so that I can try to get a higher score next time.
- As a game player, I cannot actually quit the game when I lose the game and try to quit for the first three times so that I will not become a quitter.
- As a game player, I want to see an encouraging message when I lose the game and try to quit for the first three times so that I will not give up.
- As a game player, I want to end the game after re-trying three times so that I know I am really a fighter.
- As a game player, I want to see the boss whenever I reach a certain score so that I can defeat the boss and win the game.
- As a game player, I want to jump onto the boss so that I can defeat the boss and win the game.
- As a game player, I want to move forward and backward so that I can avoid the obstacles and boss coming up.
- As a game player, I want to see a game over page when I bump into the boss so that I can know that I lose the game.
<br>
- When users get ‘invisibility’ they can defeat anything for 5 seconds. 
- User can experience a harder game with 1.2 faster speed whenever they get another 100 score.
- User double presses (or maybe press longer?) space to jump higher to avoid Copycat;
- User can press “Q” to quit the game;
- User can be power-up once collect ;
- If users resume, users can be stronger (reminded by a message) and defeat copycat;
- User can store their score automatically when it defeats the top 3 players;
- User can press ‘S’ to see the highest score on the game over page;(load scores from file)
(253 words )

### Ideation process 

The ideation process for our team's game development project involved a series of steps and discussions to arrive at our final concept. It all started with the idea of creating a jumping game, inspired by popular titles such as the T-Rex game found in Google Chrome.
As we brainstormed and discussed possible directions for the game, we eventually landed on the idea of incorporating a meme cat, such as Nyan Cat, as the main character. This idea sparked further creative discussions, as we considered different twists and concepts that could set our game apart from others in the genre.
However, we also considered the feasibility of different ideas, weighing the amount of resources and time required to bring each one to fruition. Through these discussions, we arrived at a clearer picture of why we wanted to create this game and what our ultimate goals were.
As we continued to build upon our idea, we came up with a number of different twists that could potentially make our game stand out. After much discussion and consideration, we finally arrived at our final concept, incorporating elements that we believed would be both entertaining and engaging for players.
One of the key steps in our ideation process was thinking about the flow of the game, including the use case and use story. We wanted to ensure that our game would be easy to understand and play, while still providing a fun and challenging experience for players.
To further refine our idea, we revisited our concept and made sure that everyone on the team was on the same page. This involved simulating how the user would play the game, and considering any potential obstacles or challenges that may arise.
Once we were satisfied with our concept, we moved on to creating a paper prototype of the game to test its viability. This involved putting our ideas into practice and seeing how the game actually played. This stage was crucial in helping us identify any issues or areas for improvement, which we were then able to address and refine.
Finally, we considered the timeline for the project and any details that needed to be addressed, such as the art style and sound effects. By this stage, we had a general idea of what we wanted to achieve and were able to focus on bringing the game to life.
In conclusion, our ideation process was an iterative and collaborative effort that involved a series of discussions and refinements to arrive at our final concept. By considering various factors such as feasibility and player experience, we were able to create a game that we believe will be enjoyable and engaging for players. (445 words)

---

## Design

 System architecture. Class diagrams, behavioural diagrams.

---

## Implementation

 Describe implementation of your game, in particular highlighting the three areas of challenge in developing your game.

---

## Evaluation

One qualitative evaluation (your choice)

One quantitative evaluation (of your choice)

Description of how code was tested.

---

## Process

Teamwork. How did you work together, what tools did you use. Did you have team roles? Reflection on how you worked together.
We have meeting at least once a week. 
We update our progress regularly.

Tools we used: 
- Trello (Kanban board)-> to record our process;
- Google doc to take minutes and note down all the brainstorming;
- WhatsApp Group to connect with each other
- GitHub README page to updata each other'e thought and modify it at the end

TEAM ROLE:
(final decision on week 7)

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
