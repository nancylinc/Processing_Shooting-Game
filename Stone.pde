class Stone extends Gameobject{ 
  Stone(){
        size = 40;
        pos = new PVector(0,0) ;
        v = new PVector(0,random(1,3));
        pos.y = 0;
        pos.x = random(width- size/2);
        
        
  }
  void render(){
       image(st,pos.x,pos.y,size,size);
  }
 
  
  void update(){
    
      pos.add(v);

      
  }
  
  


}
