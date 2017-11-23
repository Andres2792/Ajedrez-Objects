class Alfil extends Piezas {
protected PVector trans;
protected boolean dye;
protected PImage Color;
protected float PosX,PosY;
protected String identity;

public Alfil(int x, int y, boolean Dye, String Identity ) {
    super(x,y,Dye,Identity);
  
    Dye = dye;
    Identity = identity;
  }
 

  @Override
   void drawFigure(boolean dye){
    if(dye==true){
      image(ab, 0, 0, height/9, height/9);
    }else{
      image(an, 0, 0, height/9, height/9);
      }
    }
  
  @Override
  void move(int x, int y){
      
      PosX=x;
      PosY=y;
      
 if(dye==true){
      Turno = true;
    }else{
      Turno = false;
      }
      
  }
  
  
  
  
  
 }