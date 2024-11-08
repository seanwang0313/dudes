Description
The Dude Simulation is an interactive program that showcases objects (referred to as "Dudes") that move around the screen, interact with each other. Each Dude is initialized with unique attributes, including random color, size, and initial speed. Dudes can either be attracted or repelled by other Dudes, creating a love/hate relationship.

Features
Attraction and Repulsion: Each Dude is either attracted to or repelled by other Dudes based on a configurable attraction constant.
Collision Detection: Dudes detect and respond to collisions with each other, bouncing off upon contact.
Wall Interaction: Dudes bounce off the screen edges to avoid getting stuck on any side.
Randomized Characteristics: Each Dude is randomly assigned a color, size, and initial speed, adding variety to the simulation.

Attributes:
posX, posY: Position of the Dude.
dx, dy: Speed components in the x and y directions.
size: Size of the Dude.
col: Color of the Dude.
attracted: Boolean indicating if the Dude is attracted or repelled by others.

Methods:
update(Dude other): Updates position and handles interactions with another Dude.
applyAttractionOrRepulsion(Dude other): Adjusts speed based on attraction or repulsion to another Dude using unit vector as direction.
collisionWithDude(Dude other): Detects and responds to collisions with another Dude.
wallCollision(): Handles collisions with the screen edges.
show(): Renders the Dude on the screen.

Future improvement: 
Add gravitational pull.
Enable mouse interaction to guide dudes.

Author:
Sean Wang, 2024