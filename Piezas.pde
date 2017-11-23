abstract class Piezas {
  protected PVector trans;
  protected boolean dye;
  protected String identity;
  protected boolean selectb = false;
  protected boolean selectn = false;

  public Piezas(int x, int y, boolean c, String w) {

    trans = new PVector(x, y);
    dye = c;
    identity = w;
  }

  public void draw() {
    pushStyle();
    pushMatrix();
    translate(translation().x, translation().y);
    drawFigure(dye);
    popMatrix();
    popStyle();
  }

  abstract void drawFigure(boolean dye);   

  abstract void move(int x, int y);  


  public PVector translation() {
    return trans;
  }

  public void setTranslation(int x, int y) {
    trans.x = Mx[y][x];
    trans.y = My[y][x];
  }




  public void updateb(int x, int y) { // movimiento
    x=7;
    y=7;
    if (selectb) {
      for (int i=0; i<7; i++) {
        if ((mouseX>a+(height/8)*i)&&(mouseX<a+(height/8)*(i+1))) {
          x=i;
        }
      }
      for (int i=8; i>0; i--) {
        if ((mouseY<(height/8)*(i))&&(mouseY>(height/8)*(i-1))) {
          switch(i-1) {
          case 7:
            y=0;
            break;
          case 6:
            y=1;
            break;
          case 5:
            y=2;
            break;
          case 4:
            y=3;
            break;
          case 3:
            y=4;
            break;
          case 2:
            y=5;
            break;
          case 1:
            y=6;
            break;
          }
        }
      } 
      setTranslation(x, y);
    }
  }
  public void updaten(int x, int y) {
    x=7;
    y=7;
    if (selectn) {
      for (int i=0; i<7; i++) {
        if ((mouseX>a+(height/8)*i)&&(mouseX<a+(height/8)*(i+1))) {
          x=i;
        }
      }
      for (int i=8; i>0; i--) {
        if ((mouseY<(height/8)*(i))&&(mouseY>(height/8)*(i-1))) {
          switch(i-1) {
          case 7:
            y=0;
            break;
          case 6:
            y=1;
            break;
          case 5:
            y=2;
            break;
          case 4:
            y=3;
            break;
          case 3:
            y=4;
            break;
          case 2:
            y=5;
            break;
          case 1:
            y=6;
            break;
          }
        }
      } 
      setTranslation(x, y);
    }
  } 


  public void clickb(int x, int y) {  
    if (trans.x<x&&(trans.x+height/8)>x&&trans.y<y&&(trans.y+height/8)>y) { //verifica si esta encima de la pieza  
      selectb = !selectb;
      if (selectb==false && selectn==false){
        Turno=!Turno;
      }
    }
  }
  public void clickn(int x, int y) {  
    if (trans.x<x&&(trans.x+height/8)>x&&trans.y<y&&(trans.y+height/8)>y) { 
      selectn = !selectn;
      if (selectb==false && selectn==false) {
        Turno=!Turno;
      }
    }
  }
} 