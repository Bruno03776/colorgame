// Bruno Song
// Sept.27.2022
// This is my color game project
//enjoy!!!!!

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer music;
AudioPlayer win;
AudioPlayer fail;
AudioPlayer hhh;

//variable setting
int a = int (random(0, 8));
int b = int (random(0, 8));
int c = int (random(0, 1));
int mode;
final int intro = 0;
final int game = 1;
final int pause = 2;
final int gameover = 3;

PImage[] gif;
int numberOfFrames;
int f =0;
float cycle=0;


int randomWord = (int) random(0, 9);
int randomColor = (int) random(0, 9);

color Red = #FF0000;
color Blue = #0700FF;
color Purple = #CF00FF;
color Green = #2FB21F;
color Yellow = #FFF700;
color Orange = #FFA600;
color Black = #000000;
color White = #FFFFFF;
color Brown = #866320;

String[] words = {"RED", "BLUE", "PURPLE", "GREEN", "YELLOW","ORANGE","BLACK","WHITE","BROWN"};
color[]colors = {Red,Blue,Purple,Green,Yellow,Orange,Black,White,Brown};

float wy=60;
float wx=475;

int score;
int highscore;

void setup() {
  size(1000, 800);
  
 re();
  
}
void draw(){
 
   if (mode==intro) {
    intro();
  } else if (mode==game) {
    game();
  } else if (mode==gameover) {
    gameover();
  } 
  else {
    println("Error: Mode = " + mode);
  }
  
   
  }

 
  


  

 


   
 
