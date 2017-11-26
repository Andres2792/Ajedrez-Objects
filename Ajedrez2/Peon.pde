class Peon extends Piezas {
  protected PVector trans;
  protected boolean dye;
  protected float PosX, PosY;
  protected String identity;

  public Peon(int x, int y, boolean Dye, String Identity ) {
    super(x, y, Dye, Identity);

    Dye = dye;
    Identity = identity;
  }

  @Override
    void drawFigure(boolean dye) {
    if (dye == true) {
      image(pb, 0, 0, height/9, height/9);
    } else {
      image(pn, 0, 0, height/9, height/9);
    }
  }


  @Override
    void move(int x, int y) {
    if (selectb == true) {
      if ((y + 6) == 7) {
        fill(#FA4417);
        rect(Mx[y+1][x], My[y+1][x], height/8, height/8);
        rect(Mx[y+2][x], My[y+2][x], height/8, height/8);
      } else {
        if (y+1<8) {
          fill(#FA4417);
          rect(Mx[y+1][x], My[y+1][x], height/8, height/8);
        }
      }
    } 
    if (selectn == true) {
      if ((y + 1) == 7) {
        fill(#FA4417);
        rect(Mx[y-1][x], My[y-1][x], height/8, height/8);
        rect(Mx[y-2][x], My[y-2][x], height/8, height/8);
      } else {
        if ((y - 1) >= 0) {
          fill(#FA4417);
          rect(Mx[y-1][x], My[y-1][x], height/8, height/8);
        }
      }
    }

    if (mousePressed == true && get(mouseX, mouseY) == #FA4417) {

      if (get(mouseX, mouseY) == #FA4417) {
        for (int j = 0; j < 8; j++) {
          if ((mouseX > a+(height/8)*j) && (mouseX <= a+(height/8)*(j+1))) {
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