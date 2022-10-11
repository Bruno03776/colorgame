void mouseReleased() {
  if (mode == intro) {
    introClick();
  } else if (mode == game) {
    gameClicks();
  } else if (mode == gameover) {
    gameoverClicks();
  }
}

void keyReleased() {
  if (mode==game){
  if (keyCode == LEFT) {
    if (randomColor==randomWord) {
      score++;
      resetgame();
      win.rewind();
      win.play();
    } else {
      mode=gameover;
    }
  }
  if (keyCode == RIGHT) {
    if (randomColor!=randomWord) {
      score++;
      resetgame();
      win.rewind();
      win.play();
    } else {
      mode=gameover;
    }
  }
}
}

void tac(float x, float y, float w, float h, color c) {//tactile function for the rectangular buttons
  if (mouseX>=x && mouseX<=x+w && mouseY>=y&& mouseY<=y+h) {
    stroke(color(cycle, 255, 255));
    strokeWeight(5);
  } else {
    stroke(c);
  
  }
}
void rectbutton(float x, float y, float w, float h){//rectangular button
rect(x,y,w,h);
}

void cirtac(int x, int y, int r){//tactile function for circular button
if(dist(x,y,mouseX,mouseY)<r){
  stroke(color(cycle, 255, 255));
    strokeWeight(5);
} else stroke(255);
}

void cirbutton(int x, int y, int r){//circular button
circle(x,y,2*r);
}
