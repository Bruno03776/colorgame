void game() {
  music.pause();
  hhh.play();
  background(255);
  matches();
  nomatch();
  word();
  if (score>highscore)highscore=score;
  fill(#9093E3);
  textSize(100);
  text("Score:"+score, 500, 550);
  text("Highscore:"+highscore, 500, 650);
}

void gameClicks() { //if statement of the game part
  if (randomColor==randomWord&&mouseX<300&&mouseX>100&&mouseY>100&&mouseY<300) {
    score++;
    resetgame();
    win.rewind();
    win.play();
  } else if (randomColor!=randomWord&&mouseX<300&&mouseX>100&&mouseY>100&&mouseY<300) {
    mode=gameover;
 fail.play();
  fail.rewind();
  } else if (randomColor==randomWord&&mouseX>410&&mouseX<790&&mouseY>150&&mouseY<250) {
    mode=gameover;
  fail.play();
  fail.rewind();
  
  } else if (randomColor!=randomWord&&mouseX>410&&mouseX<790&&mouseY>150&&mouseY<250) {
    score++;
    resetgame();
    win.rewind();
    win.play();
  }
}

void word() {//if it touches the ground then gameover
  textFont(Bluetea);
  fill(colors[randomColor]);
  text(words[randomWord], 475, wy);
  wy+=10;//change speed
  
  if (wy>900) {
    mode=gameover;
     fail.play();
  fail.rewind();
  }
}

void matches() {//text
  fill(#F09DD8);
  noStroke();
  rect(0, 0, 500, 800);
  textSize(40);
  cycle++;
  if (cycle>=255) cycle=0;
  tac(100,100,200,200,0);
  rectbutton(100,150,300,100);
  fill(#F0F5C1);
  noStroke();
  text("Match", 250, 200);
}

void nomatch() { // text
  fill(#F0F5C1);
  rect(500, 0, 500, 900);
  textSize(40);
  cycle++;
  if (cycle>=255) cycle=0;
   tac(510,150,380,100,255);
   noFill();
  rectbutton(600,150,300,100); 
  fill(#F09DD8);
  text("Doesn't Match", 750, 200);
}

void resetgame() { //generate puzzle
  float pick = random(0, 1);
  if (pick<0.5) {
    randomWord=(int)random(0, 9);
    randomColor=randomWord;
  } else {
    randomWord=(int)random(0, 9);
    randomColor=(int)random(0, 9);
    while (randomWord==randomColor) {
      randomColor=(int)random(0, 9);
    }
  }
   wx=500;
  wy=40;
}
