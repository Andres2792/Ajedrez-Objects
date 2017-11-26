class Alfil extends Piezas {
  protected PVector trans;
  protected boolean dye;
  protected PImage Color;
  protected float PosX, PosY;
  protected String identity;

  public Alfil(int x, int y, boolean Dye, String Identity ) {
    super(x, y, Dye, Identity);

    Dye = dye;
    Identity = identity;
  }


  @Override
    void drawFigure(boolean dye) {
    if (dye == true) {
      image(ab, 0, 0, height/9, height/9);
    } else {
      image(an, 0, 0, height/9, height/9);
    }
  }

  @Override
    void move(int x, int y) {
diagii(x, y, selectb);
    diagid(x, y, selectb);
    diagsi(x, y, selectb);
    diagsd(x, y, selectb);

    if (mousePressed == true && get(mouseX, mouseY) == #FA4417) {

      if ( get(mouseX, mouseY) == #FA4417 && mouseButton == LEFT) {
        for (int j = 0; j < 8; j++) {
          if ((mouseX > a +(height/8)*j) && (mouseX <= a +(height/8)*(j+1))) {
            x = j;
          }
        }

        for (int j = 8; j > 0; j--) {
          if ((mouseY < (height/8)*(j)) && (mouseY >= (height/8)*(j-1))) {
            switch(j - 1) {
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
              y = 7;
              break;
            }
          }
        }
        // Generacion de el movimiento
        setTranslation(x, y);
        // Deselecion de ambos colores
        if (selectb == true) {
          selectb = false;
          // Cambio de Turno 
          Turno = false;
        } 
        if (selectn == true) {
          selectn = false;
          // Cambio de Turno 
          Turno = true;
        }
      }
    }
  }
}