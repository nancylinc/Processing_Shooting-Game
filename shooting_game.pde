Player player ;
Bullet b;
Mainmanu manu;
Gameover gameover;
Playscene playscene;

ArrayList<Bullet> bullets = new ArrayList<Bullet>();
//stones
ArrayList<Stone> stones = new ArrayList<Stone>();
int spawnTime;
int DROPCOUNT = 3;
int dropDelay [] = {1,2,3} ;
boolean dropActive[] = new boolean [DROPCOUNT];
PImage st;
//player
int health = 200 ;
int damage = 20 ;
int score =0; 
int switchTime ;
int Gamestate = 0 ;

void setup(){
  
  fill(0);
  size( 600,900 );
  player = new Player();
  manu = new Mainmanu();
  playscene = new Playscene();
  gameover = new Gameover();
  st = loadImage("stone.png");
  frameRate(120);
  

}

void draw(){
  if(Gamestate == 0){
    
    switchTime = millis()/1000;
    manu.update();
  
  }
  if(Gamestate == 1){
    
    playscene.update();
  
  }
  if (Gamestate == 2 ){
    
    gameover.update();
  
  }
 
}

void keyPressed(){
  
  if(key == ' '){
    
    bullets.add(new Bullet(player.pos.x,player.pos.y));  
    
  } //<>//
 //<>//

}
