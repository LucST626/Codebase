function setup() {
    createCanvas(500, 500);
    background(255, 0, 0);
  }
  
  function draw() {
    fill(0, 0, 0)
    if (mouseIsPressed === true) {
      ellipse(mouseX, mouseY, 20, 20)
    }
  }