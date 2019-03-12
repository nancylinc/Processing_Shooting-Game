class Player extends Gameobject{
  
  PVector verV = new PVector( 0 , 3 ); // verticle velosity
  PVector horV = new PVector(3 , 0 );// horizontal velosity
  PVector verA = new PVector ( 0 , 0.5 ); //acceleration
  PVector horA =  new PVector( 0.5 , 0 );
   PImage plane;
  
  Player(){
    size = 50;
    pos = new PVector( width/2,height-60 );
    plane = loadImage("plane.png");
    imageMode(CENTER);
    image(plane,pos.x,pos.y,size,size);
    rectMode(CENTER);
    fill(255);   
    
  }
  
  
  void render(){
    background(0);
    image(plane,pos.x,pos.y,size,size);
    fill(255);
    rectMode(CENTER);
  
  }
  
  void update(){
    
    playerMove();
    playerDeath();

    }
  
  void playerDeath(){
    
    if(health == 0){
      
      Gamestate = 2;
    
    }
  
  
  }
    
  
  void playerMove(){
    
    if( keyPressed){
      
         switch(keyCode){
           case UP:
           if(pos.y>0){
           pos.sub(verV);
           }
           break;
           
           case DOWN:
           if(pos.y<height){
           pos.add(verV);
           }
           break;
           
           case LEFT:
           if(pos.x>0){
           pos.sub(horV);
           }
           break;
           
           case RIGHT:
           if(pos.x<height){
           pos.add(horV);
           }
           break;
        }
  
  
    }
  }
  
  
  
  
  
}
