void gameover() {
  background(0);
hhh.pause();
fail.play();


  noFill();
  RestartButton(350, 500, 300, 100);
  textSize(100);
  fill(#F50C56);
  text("Game Over", 500, 100);
  textSize(55);
  fill(#F5A6BF);
  text("Highscore:"+highscore, 500, 250);
  text("Score:"+score, 500, 350);
  wx++;
  wy++;
 
}

void gameoverClicks() {// button go back to intro
  if (mouseX>=350 && mouseX<=550 && mouseY>=500&& mouseY<=600) {
    mode=intro;
    score=0;
  } else if (mouseX>=400 && mouseX<=500 && mouseY>=690&& mouseY<=790);
 
}

void RestartButton(int x, int y, int w, int h) {//restart button
  colorMode(HSB);
  cycle++;
  if (cycle>=255) cycle=0;
  tac(x, y, w, h, 255);
  rectbutton(x, y, w, h);
  fill(255);
  textSize(55);
  text("RESTART",485,550);
  music.play();
  music.rewind();
  
 
  
}
