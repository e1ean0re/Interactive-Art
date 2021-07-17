//create a class
class square {
  
 //set variables for program
  float x;
  float y;
  float xspeed = 5;
  float yspeed = 2.3;
  float size;
  float r = random(255);
float g = random(255);
float b = random(255);
float moveY;
float moveX;

//set perameters for square object
square (float tempD) {
   x = mouseX;
   y = mouseY;
      size = tempD;
}

//what to display when the mouse is pressed
  void displayRect() {
  if (mousePressed) {
  //   x = mouseX;
   // y = mouseY;
      r = random(255);
    g = random(255);
    b = random(255);
    }
    //creating the square
    fill(r, g, b);
    rect(x, y, size, size);
  }

//moving the square
  void moveRect() {
    x = x + xspeed;
    y = y + yspeed;
  }

//checking the edges of the square so it doesnt go outof bounds
  void checkEdges() {
    
    if (x > width || x < 0) {
      xspeed = xspeed * -1;
    }
    if (y > height || y < 0) {
      yspeed = yspeed * -1;
    }
  }
}