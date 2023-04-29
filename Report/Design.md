<p align="center">
  <img src="Images/design.png" alt="logo-black">
</p>


## Table of Contents
  - [System architecture](#system-architecture)
  - [Class diagrams](#class-diagrams)
  - [Behavioral Diagram](#behavioral-diagram)


## System architecture

The "Cat Adventure" game employs a custom, object-oriented system architecture that emphasises modularity and separation of concerns. This approach enables the efficient organisation and management of various components and functionalities within the game. The architecture is organised hierarchically, with a central class orchestrating the game's state and managing interactions between other classes.

The object-oriented design principles followed in this architecture allow for the creation of abstract parent classes, which provide shared functionality for their child classes. This promotes code reuse and simplifies the implementation of specific behaviours and logic in the child classes. The communication between classes ensures smooth gameplay and responsiveness to user input, while also enabling the possibility of future enhancements and maintenance with ease.

 ## Behavioral Diagram
The sequence diagram below describes in order how actions in the game are performed.

![SequenceDiagram3](https://user-images.githubusercontent.com/115186584/234691294-15f4200f-aea6-4d1a-a57e-96b55aa8abfc.png)

Firstly the user interacts with a series of menus, selecting a character, difficulty level and entering a username. Once the game begins the player jumps over a series of randomly generated obstacles, the generation of each obstacle is one iteration in the Obstacle Loop.

Once the player has cleared a number of obstacles without any collisions, they break out into the Boss Iteration loop and the boss character appears, moving side to side on the screen. If the player defeats the boss by landing on the head of the boss, they re-enter the obstacle loop but the speed of the game increases slightly.

If the player clears the next set of randomly generated obstacles, they face the boss again in the Boss Iteration loop but now the boss is jumping left to right on the screen. As the Boss Iteration loop increments, the movement of the boss becomes more exaggerated and erratic and harder to defeat, until the player dies.

When the player dies, they can restart the game or quit. If the player decides to quit they are stuck in the “fake quit scenario” loop for three iterations, the game begins again after the first three times they attempt to quit the game.

## Class diagrams
 
![ClassDiagram](https://user-images.githubusercontent.com/115186584/234691242-91ad3357-0b8d-488b-a6d0-d98b9b9a026a.jpeg)

When designing our system architecture, we took the approach that it would be better to have a higher number of discrete classes, each responsible for doing a specific function well, rather than having a smaller number of classes, each performing for lots of tasks.

NyanCat Class - This is the main class which handles the game states, the in-game play collision detection and keeps track of the score. It is the highest level class and renders all visible objects in the game.

Button Class - This class renders all the selectable buttons in the game.

PEObject Class - The player enemy object class is an abstract parent class of the player and enemy classes. It provides functionality for the dynamic, moving objects in the games, and it has a generalisation relationship with the Player and Enemy classes. 

Player Class - a child class of the PEObject class handles the movement of the player.

Enemy Class - a child class of the PEObject class handles the movement of the enemy.

Object Class - The object class is an abstract parent class of the static game objects, the obstacles and the cloud objects, which are not interacted with. It has a generalisation relationship with the Obstacle and Cloud classes. 

Obstacle Class - a child class of the Object class and renders the obstacles in the game.

Cloud Class - a child class of the Object class and renders the clouds in the background of the game.
[aggregation relationships]

From grammatical parse of the system requirements we identified the following possible class types:
- Menu
- Settings
- Character
- Player
- Username [x]
- Button
- Obstacle
- Boss
- Instructions [x]
- Animation
- Sound effects
- Leaderboard

## Visual Design Resources:
Sketches outlining the visual layout for the game menus, in game play,  fake quit scenario and leaderboard can be found here: 
[Game Visual Sketches](Diagrams/classDiagram/ClassDiagram.jpeg](https://github.com/UoB-COMSM0110/2023-group-4/blob/main/Diagrams/classDiagram/ClassDiagram.jpeg)
Note the obstacles in these sketches are represented as pipes as at this point but are to be replaced with the following designs:
[Obstacle Designs](https://github.com/UoB-COMSM0110/2023-group-4/tree/main/Code/design_and_interface/game_BG/obstacle)


 
