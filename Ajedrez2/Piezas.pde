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




  public void updateb(int x, int y) { 
    if (selectb) {
      x = int(trans.x-a)/( height/8);
      y = int(trans.y)/( height/8);
      switch(y) {
      case 7:
        y = 0;
        break;
      case 6:
        y = 1;
        break;
      case 5:
        y = 2;
        break;
      case 4:
        y = 3;
        break;
      case 3:
        y = 4;
        break;
      case 2:
        y = 5;
        break;
      case 1:
        y = 6;
        break;
      default:
        y=7;
      } 
      println(x);
      println(y);
      move(x, y);
    }
  }
  public void updaten(int x, int y) {
    if (selectn) {
      x = int(trans.x-a)/( height/8);
      y = int(trans.y)/( height/8);
      switch(y) {
      case 7:
        y = 0;
        break;
      case 6:
        y = 1;
        break;
      case 5:
        y = 2;
        break;
      case 4:
        y = 3;
        break;
      case 3:
        y = 4;
        break;
      case 2:
        y = 5;
        break;
      case 1:
        y = 6;
        break;
      default:
        y=7;
      } 
      println(x);
      println(y);
      move(x, y);
    }
  } 


  public void clickb(int x, int y) {  
    if (trans.x < x && (trans.x+height/8) > x && trans.y < y && (trans.y+height/8) > y) { //verifica si esta encima de la pieza  
      selectb = !selectb;
      if (selectb == false && selectn == false) {
        Turno = !Turno;
      }
    }
  }
  public void clickn(int x, int y) {  
    if (trans.x < x && (trans.x+height/8) > x && trans.y < y && (trans.y+height/8) > y) { 
      selectn = !selectn;
      if (selectb == false && selectn == false) {
        Turno = !Turno;
      }
    }
  }
} 