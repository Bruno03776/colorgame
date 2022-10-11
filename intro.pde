PFont Bluetea;

void intro() {
  
  image(gif[f],0,0,width,height);
    
    f=1+f;
    if(f==numberOfFrames){
      f=0;
    }
  //score text on intro page

  textAlign(CENTER,CENTER);
  textSize(100);
  colorMode(HSB);
  fill (color(cycle, 255, 255));
  cycle++;
  if (cycle>=255) cycle=0;
   text(" COLOR MATCH ", 500, 300);
   textSize(70);
    text("START!!!", 500, 600);
 textFont (Bluetea);
  Start();
  resetintro();
 
 
}
  void Start(){
  noFill();
  cirtac(500,700,50);
  cirbutton(500,700,50);
  stroke(255);
  strokeWeight(5);
    if(dist(700,700,mouseX,mouseY)<50)
    stroke(color(cycle, 255, 255));
   line(525,700,510,690);
  line(475,700,525,700);
  line(525,700,510,710);
  if(mousePressed)
  mode=game;
  resetgame();
  

}
void introClick(){}


 void re(){//music
  Bluetea = createFont("Bluetea.ttf", 100);
 minim=new Minim(this);
 music=minim.loadFile("hhh.mp3");
 fail=minim.loadFile("hh.wav");
 win=minim.loadFile("h.wav");
 hhh=minim.loadFile("MUSIC.mp3");

 
  numberOfFrames=62;//gif
  gif=new PImage[numberOfFrames];
  
  for(int i=0;i<numberOfFrames;i++){
    for(i=0;i<10;i++){
      gif[i]=loadImage("frame_0"+i+"_delay-0.04s.gif");
    }
    for(i=10;i<62;i++){
      gif[i]=loadImage("frame_"+i+"_delay-0.04s.gif");
    }
  }
   
  }
  void resetintro(){
     music.play();
    
  }
