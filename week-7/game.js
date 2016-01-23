// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: 
// Overall mission: Save your town from a bunny invasion! 
// Goals: When you find a bunny, catch it to prevent a bunny rendevous!
// Characters: Player
// Objects: Player, Bunny 1, Bunny 2
// Functions: Add radom positions, Place bunny 1, bunny 2, and player on board

// Pseudocode
// Create a game board 4 X 4 game board
// Assign position location for player, bunny 1, and bunny 2 
// Place player, bunny 1, and bunny 2 on board
// IF Players's position is in the same location as the bunny, you win!
// IF two bunnies land in the same position, you lose. Bunny invasion!
//

// Initial Code

// var game_board = [["-", "-", "-", "-"],
//                   ["-", "-", "-", "-"],
//                   ["-", "-", "-", "-"],
//                   ["-", "-", "-", "-"]];

// var x = Math.floor(Math.random() * 4);
// var y = Math.floor(Math.random() * 4);
// var x2 = Math.floor(Math.random() * 4);
// var y2 = Math.floor(Math.random() * 4);
// var x3 = Math.floor(Math.random() * 4);
// var y3 = Math.floor(Math.random() * 4);

// var bunny1 = {
//   name: "Bunny 1",
//   posX: x,
//   posY: y,
//   friendsWithBunnyfits: 0,
  
// }

// var bunny2 = {
//   name: "Bunny 2",
//   posX: x2,
//   posY: y2,
//   friendsWithBunnyfits: 0,
// }

// var player = {
//   name: "Player",
//   posX: x3,
//   posY: y3,
//   bunnies: 0,
// }


// function moveBunny1(array, x, y) {
//   array[x][y] = "B1";
//   if(bunny1.posX === bunny2.posX && bunny1.posY === bunny2.posY){
//   array[x][y] = "<3";
//   }
//   return "Catch the bunnies before they meet!";
// }

// function moveBunny2(array, x, y) {
//   array[x][y] = "B2";
//   if(bunny1.posX === bunny2.posX && bunny1.posY === bunny2.posY){
//   array[x][y] = "<3";
//   }
//   return "The fate of the world depends on it!"
// }

// function movePlayer(array, x, y) {
//   array[x][y] = "P";
//   console.log("");
//   return array
// }


// console.log(moveBunny1(game_board, x, y));
// console.log(moveBunny2(game_board, x2, y2));
// console.log(movePlayer(game_board, x3, y3));

// if(bunny1.posX === bunny2.posX && bunny1.posY === bunny2.posY){
//   bunny1.friendsWithBunnyfits = 1;
//   bunny2.friendsWithBunnyfits = 1;
//   console.log("");
//   console.log("..............GAME OVER..............");
//   console.log("<3 A bunny rendevous has commenced <3");
//   console.log("....A bunny invasion is imminent!....");
//   console.log("..............GAME OVER..............");
// }
  
// else if(bunny1.posX === player.posX && bunny1.posY === player.posY){
//   player.bunnies = 1;
//   console.log("");
//   console.log("You caught a Bunny 1 and saved the day!");}
  
// else if(bunny2.posX === player.posX && bunny2.posY === player.posY){
//   player.bunnies = 1;
//   console.log("");
//   console.log("You caught a Bunny 2 and saved the day!");}


// console.log("")

// console.log(bunny1)
// console.log(bunny2)
// console.log(player)



// Refactored Code
var game_board = [["-", "-", "-", "-"],
                  ["-", "-", "-", "-"],
                  ["-", "-", "-", "-"],
                  ["-", "-", "-", "-"]];

//Function 1: Add value to posX and posY properties of an object
function randomPos(object) {
  object.posX = Math.floor(Math.random() * 4);
  object.posY = Math.floor(Math.random() * 4);
}

//Object 1
var bunny1 = {
  name: "Bunny 1",
  posX: "",
  posY: "",
  friendsWithBunnyfits: 0, 
}

//Object 2
var bunny2 = {
  name: "Bunny 2",
  posX: "",
  posY: "",
  friendsWithBunnyfits: 0,
}

//Object 3
var player = {
  name: "Player",
  posX: "",
  posY: "",
  bunnies: 0,
}

//Function 2: This is place objects on the board at random locations
function play(array, x, y, x2, y2, x3, y3) {
  array[x][y] = "B1";
  array[x2][y2] = "B2";
  array[x3][y3] = "P";
  if(bunny1.posX === bunny2.posX && bunny1.posY === bunny2.posY) {
  array[x][y] = "<3";
  }
  console.log("Stop a bunny rendevous! The fate of the world depends on it!");
  console.log("");
  return array;
}

//Give objects positions
randomPos(bunny1);
randomPos(bunny2);
randomPos(player);

//Place objects on the board and check if any land in the same spot
console.log(play(game_board, bunny1.posX, bunny1.posY, bunny2.posX, bunny2.posY,
                 player.posX, player.posY));

if(bunny1.posX === bunny2.posX && bunny1.posY === bunny2.posY) {
  bunny1.friendsWithBunnyfits = 1;
  bunny2.friendsWithBunnyfits = 1;
  console.log("");
  console.log("..............GAME OVER..............");
  console.log("<3 A bunny rendevous has commenced <3");
  console.log("....A bunny invasion is imminent!....");
  console.log("..............GAME OVER..............");
  console.log("");
}
  
else if((bunny1.posX === player.posX && bunny1.posY === player.posY) || (bunny2.posX === player.posX && bunny2.posY === player.posY)) {
  player.bunnies = 1;
  console.log("");
  console.log("...............WINNER!...............");
  console.log("You caught a bunny and saved the day!");
  console.log("...............WINNER!...............");}
  console.log("");


//Driver Code: Test to make sure objects are updating
console.log(bunny1)
console.log(bunny2)
console.log(player)

// Reflection
//
//
//
//
//
//
//
//