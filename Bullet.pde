class Bullet extends Gameobject{
  
  PImage bullets;
  
  
  Bullet(float posX,float posY){
    size = 10;
    v = new PVector( 0,-10 );
    pos = new PVector();
    bullets = loadImage("bullets.png");
    pos.x = posX;
    pos.y = posY;    
    
  }
  
  void render(){
    
    image(bullets,pos.x,pos.y-player.size/2,size,size);
 
  }
  
  void update(){
    
    pos.add(v);
   
  
  }
  
  

}
