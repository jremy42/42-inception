const border = '#93BB8A';
const background = '#7DA177';
const snake_col = 'grey';
const snake_border = 'red';

let snake = [
    {x: 200, y: 200},
    {x: 190, y: 200},
    {x: 180, y: 200},
    {x: 170, y: 200},
    {x: 160, y: 200}
  ]
let hight_score = 0; 
let dir_x = 10;
let dir_y = 0;
let speed = 100;
const snakeboard = document.getElementById("snakeboard");
const ctx = snakeboard.getContext('2d');
let elt = document.getElementById('score');
let coord_apple_x = 30;
let coord_apple_y = 30;
document.body.addEventListener('keydown', keyDown);

function gameOver()
{
    for (let i = 1; i < snake.length; i++)
    {
        if ((snake[0].x == snake[i].x) && (snake[0].y == snake[i].y))
            return false;
    }
    return true;
}


function drawGame()
{
    setTimeout(function onTick() {
    clearScrean();
    if (!gameOver())
    {
        elt.innerHTML = "<p> GAME OVER </br> score: " + hight_score + "</p>";
        return ;
    }
    move_snake();
    checkCollision();
    drawSnake();
    drawApple();
    drawGame();
    }, speed);
}

function clearScrean()
{
  ctx.fillStyle = background;
  ctx.strokestyle = border;
  ctx.fillRect(0, 0, snakeboard.width, snakeboard.height);
  ctx.strokeRect(0, 0, snakeboard.width, snakeboard.height)
}

function drawSnake()
{
    snake.forEach(drawSnakePart); 
}

function addPart()
{
    const newPart = {x: snake[snake.length - 1].x - dir_x, y: snake[snake.length - 1].y - dir_y};
    snake.push(newPart);

}
function checkCollision()
{
    if (snake[0].x == coord_apple_x && snake[0].y == coord_apple_y)
    {
        coord_apple_x = Math.floor(Math.random() * 400) * 10 % 400;
        coord_apple_y = Math.floor(Math.random() * 400) * 10 % 400;
        console.log("apple x = " + coord_apple_x);
        console.log("apple y = " + coord_apple_y);
        hight_score += 10;
        addPart();
        elt.innerHTML = "<p> score: " + hight_score + "</p>";
    }
    
   
}

function drawApple()
{
    ctx.fillStyle = 'red';
    ctx.strokestyle = 'red';
    ctx.fillRect(coord_apple_x, coord_apple_y, 10, 10);
    ctx.strokeRect(coord_apple_x, coord_apple_y, 10, 10);
}

function drawSnakePart(snakePart)
{
    ctx.fillStyle = snake_col;
    ctx.strokestyle = snake_border;
    ctx.fillRect(snakePart.x, snakePart.y, 10, 10);
    ctx.strokeRect(snakePart.x, snakePart.y, 10, 10);
}

function move_snake()
{
    const head = {x: snake[0].x + dir_x, y: snake[0].y + dir_y};
    if (head.x > 400)
        head.x = 0;
    else if (head.y > 400)
        head.y = 0;
    else if (head.x < 0)
        head.x = 400;
    else if (head.y < 0)
        head.y = 400;
    snake.unshift(head);
    snake.pop();
}

function keyDown(event)
{
    console.log(event.keyCode);
    if(event.keyCode==38){

        if(dir_y == 10)
            return; 
        dir_y = -10;
        dir_x =0;

    }
    //down
    if(event.keyCode==40){
        if(dir_y == -10)
            return;
        dir_y = 10;
        dir_x = 0;
    }

    //left
    if(event.keyCode==37){
        if(dir_x == 10)
            return;
        dir_y = 0;
        dir_x = -10;
    }
    //right
    if(event.keyCode== 39){
        if(dir_x == -10)
        return;
        dir_y = 0;
        dir_x = 10;
    }
}

drawGame();