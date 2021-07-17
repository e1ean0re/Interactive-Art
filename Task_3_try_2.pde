//create an array
square[] square = new square[1000];

//total for array number
int total = 0;

void setup() {
  size(1280, 720);

  for (int i = 0; i < square.length; i++) {
    square[i] = new square(50);
  }
}

//when mouse is pressed add a 1 to total
void mousePressed() {
  total = total + 1;
}

//drawing the squares using the flexible array
void draw() {
    background(0);
  for (int i = 0; i <total; i++) {
    square[i].displayRect();
    square[i].moveRect();
    square[i].checkEdges();
  }
}