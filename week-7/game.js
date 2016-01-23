// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: 
// Overall mission: Save your town from a bunny invasion! 
// Goals: When you find a bunny, catch it to prevent a bunny rendevous!
// Characters: Player
// Objects: Player, bunny 1, bunny 2
// Functions: place bunny 1, place bunny 2, place player

// Pseudocode
// Create a game board 4 X 4 game board
// Place two bunnies on the board in random locations
// Place Molly on the board at a random location
// For every move that Molly makes, shuffle the bunny locations
// IF Molly's position is in the same location as the bunny, you win!
// IF two bunnies land in the same position, you lose. Bunny invasion!
// 
//

// Initial Code

var game_board = [["-", "-", "-", "-"],
                  ["-", "-", "-", "-"],
                  ["-", "-", "-", "-"],
                  ["-", "-", "-", "-"]];

var x = Math.floor(Math.random() * 4);
var y = Math.floor(Math.random() * 4);
var x2 = Math.floor(Math.random() * 4);
var y2 = Math.floor(Math.random() * 4);
var x3 = Math.floor(Math.random() * 4);
var y3 = Math.floor(Math.random() * 4);

var bunny1 = {
  posX: x,
  posY: y,
}

var bunny2 = {
  posX: x2,
  posY: y2,
}

var player = {
  posX: x3,
  posY: y3,
}


function place_bunny1(array, x, y) {
  array[x][y] = "B1";
  return "Bunny 1 has moved!"
}

function place_bunny2(array, x, y) {
  array[x][y] = "B2";
  return "Bunny 2 has moved!"
}

function place_molly(array, x, y) {
  array[x][y] = "P";
  return array;
}


console.log(place_bunny1(game_board, x, y));
console.log(place_bunny2(game_board, x2, y2));
console.log(place_molly(game_board, x3, y3));

if(bunny1.posX === bunny2.posX && bunny1.posY === bunny2.posY){
console.log("A bunny rendevous has commenced. The invasion is inevitable! GAME OVER");
}
else if(bunny1.posX === player.posX && bunny1.posY === player.posY){
console.log("You caught a bunny and saved the day!");}
  
else if(bunny2.posX === player.posX && bunny2.posY === player.posY){
console.log("You caught a bunny and saved the day!");}


// Refactored Code






// Reflection
//
//
//
//
//
//
//
//