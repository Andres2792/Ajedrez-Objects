int verificar(int n, int contador) {
  if (n == 1) {
    image(p1, 0, 0, a, height-a/4);
    image(m2, a/4, 7*height/8, a/2, a/4);
    if (contador == 0) {
      if (PiezasB[6].trans.x == Mx[1][5] && PiezasB[6].trans.y == My[1][5] && mousePressed&& PiezasB[6].selectb==false) {
        PiezasB[5].trans.x = width;
        PiezasN[1].trans.x = Mx[3][3];
        PiezasN[1].trans.y = My[3][3];
        Turno = !Turno;
        cont=1;
      } else if (Turno == false && PiezasB[6].selectb == false && PiezasB[6].trans.x != Mx[1][5]) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
      }
    } 
    if (contador == 1) {
      if (PiezasB[1].trans.x == Mx[4][6] && PiezasB[1].trans.y == My[4][6] && mousePressed && PiezasB[1].selectb==false) { 
        image(jm, height, height/4, 3*height/8, height/8);
        g=1;
      } else if ( (PiezasB[1].trans.x == Mx[5][6]||Mx[4][6] != PiezasB[1].trans.x) && Turno == false && PiezasB[1].selectb == false) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
        cont=0;
      }
    }
  } else if (n == 2) {
    image(p2, 0, 0, a, height-a/2);
    image(m2, a/4, 7*height/8, a/2, a/4);
    if (contador == 0) {
      if (PiezasB[5].trans.x == Mx[5][2] && PiezasB[5].trans.y == My[5][2] && mousePressed) {
        PiezasN[0].trans.x = Mx[7][1];
        PiezasN[0].trans.y = My[7][1];
        Turno = !Turno;
        cont=1;
      } else if (Turno == false && PiezasB[5].selectb == false && PiezasB[5].trans.x != Mx[5][2]) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
      }
    } 
    if (contador == 1) {
      if (PiezasB[5].trans.x == Mx[5][1] && PiezasB[5].trans.y == My[5][1] && mousePressed&& PiezasB[5].selectb == false) { 
        image(jm, height, height/4, 3*height/8, height/8);
        g=1;        
        return n;
      } else if ( (PiezasB[5].trans.x == Mx[5][2]||Mx[5][1] != PiezasB[5].trans.x) && Turno == false && PiezasB[5].selectb == false) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
        cont=0;
      }
    }
  } else if (n == 3) {
    image(p3, 0, 0, a, height-a/2);
    image(m2, a/4, 7*height/8, a/2, a/4);
    if (contador == 0) {
      if (PiezasB[3].trans.x == Mx[4][5] && PiezasB[3].trans.y == My[4][5] && mousePressed && PiezasB[3].selectb == false) {
        PiezasB[3].trans.x = width;
        PiezasN[1].trans.x = Mx[4][5];
        PiezasN[1].trans.y = My[4][5];
        Turno = !Turno;
        cont=1;
      } else if (Turno == false && PiezasB[3].selectb == false && PiezasB[3].trans.x != Mx[4][5]) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
      }
    } 
    if (contador == 1) {
      if (PiezasB[1].trans.x == Mx[7][7] && PiezasB[1].trans.y == My[7][7] && mousePressed && PiezasB[3].selectb == false) { 
        image(jm, height, height/4, 3*height/8, height/8);
        g=1;
      } else if ( (PiezasB[1].trans.x == Mx[7][6]||Mx[7][7] != PiezasB[1].trans.x) && Turno == false && PiezasB[1].selectb == false) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
        cont=0;
      }
    }
  } else if (n == 4) {
    image(p4, 0, 0, a, height-a/4);
    image(m2, a/4, 7*height/8, a/2, a/4);
    if (contador == 0) {
      if (PiezasB[2].trans.x == Mx[4][1] && PiezasB[2].trans.y == My[4][1] && mousePressed && PiezasB[2].selectb == false) {
        PiezasB[2].trans.x = width;
        PiezasB[2].trans.y = width;
        PiezasN[0].trans.x = Mx[4][1];
        PiezasN[0].trans.y = My[4][1];
        Turno = !Turno;
        cont=1;
      } else if (Turno == false && PiezasB[2].selectb == false && PiezasB[2].trans.x != Mx[4][3]) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
      }
    } 
    if (contador == 1) {
      if (PiezasB[4].trans.x == Mx[2][2] && PiezasB[4].trans.y == My[2][2] && mousePressed && PiezasB[4].selectb == false) { 
        image(jm, height, height/4, 3*height/8, height/8);
        g=1;
      } else if ( (PiezasB[4].trans.x == Mx[0][1]||Mx[2][2] != PiezasB[4].trans.x) && Turno == false && PiezasB[4].selectb == false) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
        cont=0;
      }
    }
  } else if (n == 5) {
    image(p5, 0, 0, a, height-a/1.5);
    image(m2, a/4, 7*height/8, a/2, a/4);
    if (contador == 0) {
      if (PiezasB[2].trans.x == Mx[5][1] && PiezasB[2].trans.y == My[5][1] && mousePressed && PiezasB[2].selectb == false) {
        PiezasB[2].trans.x = width;
        PiezasN[2].trans.x = Mx[5][1];
        PiezasN[2].trans.y = My[5][1];
        Turno = !Turno;
        cont=1;
      } else if (Turno == false && PiezasB[2].selectb == false && PiezasB[2].trans.x != Mx[5][1]) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
      }
    } 
    if (contador == 1) {
      if (PiezasB[6].trans.x == Mx[6][6] && PiezasB[6].trans.y == My[6][6] && mousePressed && PiezasB[6].selectb == false) { 
        image(jm, height, height/4, 3*height/8, height/8);
        g=1;
      } else if ( (PiezasB[6].trans.x == Mx[0][0]||Mx[6][6] != PiezasB[6].trans.x) && Turno == false && PiezasB[6].selectb == false) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
        cont=0;
      }
    }
  } else if (n == 6) {
    image(p6, 0, 0, a, height-a/1.3);
    image(m2, a/4, 7*height/8, a/2, a/4);
    if (contador == 0) {
      if (PiezasB[2].trans.x == Mx[5][0] && PiezasB[2].trans.y == My[5][0] && mousePressed && PiezasB[2].selectb == false) {
        PiezasN[3].trans.x = Mx[1][5];
        PiezasN[3].trans.y = My[1][5];
        Turno = !Turno;
        cont=1;
      } else if (Turno == false && PiezasB[2].selectb == false && PiezasB[2].trans.x != Mx[5][0]) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
      }
    } 
    if (contador == 1) {
      if (PiezasB[2].trans.x == Mx[5][6] && PiezasB[2].trans.y == My[5][6] && mousePressed && PiezasB[2].selectb == false) { 
        image(jm, height, height/4, 3*height/8, height/8);
        g=1;
      } else if ( (PiezasB[2].trans.x == Mx[5][0]||Mx[5][6] != PiezasB[2].trans.x) && Turno == false && PiezasB[2].selectb == false) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
        cont=0;
      }
    }
  } else if (n == 7) {
    image(p7, 0, 0, a, height-a/4);
    image(m2, a/4, 7*height/8, a/2, a/4);
    if (contador == 0) {
      if (PiezasB[1].trans.x == Mx[0][4] && PiezasB[1].trans.y == My[0][4] && mousePressed && PiezasB[1].selectb == false) {
        PiezasB[1].trans.x = width;
        PiezasN[0].trans.x = Mx[0][4];
        PiezasN[0].trans.y = My[0][4];
        Turno = !Turno;
        cont=1;
      } else if (Turno == false && PiezasB[1].selectb == false && PiezasB[1].trans.x != Mx[0][4]) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
      }
    } 
    if (contador == 1) {
      if (PiezasB[2].trans.x == Mx[1][3] && PiezasB[2].trans.y == My[1][3] && mousePressed && PiezasB[2].selectb == false) { 
        image(jm, height, height/4, 3*height/8, height/8);
        g=1;
      } else if ( (PiezasB[2].trans.x == Mx[4][6]||Mx[1][3] != PiezasB[2].trans.x) && Turno == false && PiezasB[2].selectb == false) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
        cont=0;
      }
    }
  } else if (n == 8) {
    image(p8, 0, 0, a, height-a/4);
    image(m2, a/4, 7*height/8, a/2, a/4);
    if (contador == 0) {
      if (PiezasB[5].trans.x == Mx[0][0] && PiezasB[5].trans.y == My[0][0] && mousePressed && PiezasB[5].selectb == false) {
        PiezasN[1].trans.x = Mx[7][7];
        PiezasN[1].trans.y = My[7][7];
        Turno = !Turno;
        cont=1;
      } else if (Turno == false && PiezasB[2].selectb == false && PiezasB[2].trans.x != Mx[0][0]) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
      }
    } 
    if (contador == 1) {
      if (PiezasB[5].trans.x == Mx[0][4] && PiezasB[5].trans.y == My[0][4] && mousePressed && PiezasB[5].selectb == false) { 
        image(jm, height, height/4, 3*height/8, height/8);
        g=1;
      } else if ( (PiezasB[5].trans.x == Mx[0][0]||Mx[0][4] != PiezasB[5].trans.x) && Turno == false && PiezasB[5].selectb == false) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
        cont=0;
      }
    }
  } else if (n == 9) {
    image(p9, 0, 0, a, height-a/1.5);
    image(m2, a/4, 7*height/8, a/2, a/4);
    if (contador == 0) {
      if (PiezasB[4].trans.x == Mx[0][5] && PiezasB[4].trans.y == My[0][5] && mousePressed && PiezasB[4].selectb == false) {
        PiezasB[1].trans.x = width;
        PiezasN[3].trans.x = Mx[3][4];
        PiezasN[3].trans.y = My[3][4];
        Turno = !Turno;
        cont=1;
      } else if (Turno == false && PiezasB[4].selectb == false && PiezasB[4].trans.x != Mx[3][4]) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
      }
    } 
    if (contador == 1) {
      if (PiezasB[2].trans.x == Mx[3][4] && PiezasB[2].trans.y == My[3][4] && mousePressed && PiezasB[2].selectb == false) { 
        PiezasN[3].trans.x = width;
        image(jm, height, height/4, 3*height/8, height/8);
        g=1;
      } else if ( (PiezasB[2].trans.x == Mx[2][6]||Mx[3][4] != PiezasB[2].trans.x) && Turno == false && PiezasB[2].selectb == false) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
        cont=0;
      }
    }
  } else if (n == 10) {
    image(p10, 0, 0, a, height-a/1.5);
    image(m2, a/4, 7*height/8, a/2, a/4);
    if (contador == 0) {
      if (PiezasB[2].trans.x == Mx[1][5] && PiezasB[2].trans.y == My[1][5] && mousePressed && PiezasB[2].selectb == false) {
        PiezasN[2].trans.x = Mx[4][1];
        PiezasN[2].trans.y = My[4][1];
        Turno = !Turno;
        cont=1;
      } else if (Turno == false && PiezasB[2].selectb == false && PiezasB[2].trans.x != Mx[1][5]) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
      }
    } 
    if (contador == 1) {
      if (PiezasB[3].trans.x == Mx[2][2] && PiezasB[3].trans.y == My[2][2] && mousePressed && PiezasB[3].selectb == false) { 
        image(jm, height, height/4, 3*height/8, height/8);
        g=1;
      } else if ( (PiezasB[3].trans.x == Mx[1][2]||Mx[2][2] != PiezasB[3].trans.x) && Turno == false && PiezasB[3].selectb == false) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
        cont=0;
      }
    }
  } else if (n == 11) {
    image(p11, 20, 0, a-30, height+10-a/5);
    image(m3, a/4, 7*height/8, a/2, a/4);
    if (contador == 0) {
      if (PiezasB[7].trans.x == Mx[4][7] && PiezasB[7].trans.y == My[4][7] && mousePressed && PiezasB[7].selectb == false) {
        PiezasB[7].trans.x = width;
        PiezasN[6].trans.x = Mx[4][7];
        PiezasN[6].trans.y = My[4][7];
        Turno = !Turno;
        cont=1;
      } else if (Turno == false && PiezasB[7].selectb == false && PiezasB[7].trans.x != Mx[4][7]) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
      }
    } 
    if (contador == 1) {
      if (PiezasB[1].trans.x == Mx[6][3] && PiezasB[1].trans.y == My[6][3] && mousePressed && PiezasB[1].selectb == false) { 
        PiezasN[3].trans.x = Mx[6][0];
        PiezasN[3].trans.y = My[6][0];
        Turno = !Turno;
        cont=2;
      } else if ( (PiezasB[1].trans.x == Mx[5][3]||Mx[6][3] != PiezasB[1].trans.x) && Turno == false && PiezasB[1].selectb == false) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
        cont=0;
      }
    } 
    if (contador ==2) {
      if (PiezasB[1].trans.x == Mx[7][3] && PiezasB[1].trans.y == My[7][3] && mousePressed && PiezasB[1].selectb == false) {
        image(jm, height, height/4, 3*height/8, height/8);
        g=1;
      } else if ( (PiezasB[1].trans.x == Mx[6][3]||Mx[7][3] != PiezasB[1].trans.x) && Turno == false && PiezasB[1].selectb == false) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
        cont=0;
      }
    }
  } else if (n == 12) {
    image(p12, 0, 0, a, height-a/4);
    image(m3, a/4, 7*height/8, a/2, a/4);
    if (contador == 0) {
      if (PiezasB[2].trans.x == Mx[5][5] && PiezasB[2].trans.y == My[5][5] && mousePressed && PiezasB[2].selectb == false) {
        PiezasB[2].trans.x = width;
        PiezasN[1].trans.x = Mx[5][5];
        PiezasN[1].trans.y = My[5][5];
        Turno = !Turno;
        cont=1;
      } else if (Turno == false && PiezasB[2].selectb == false && PiezasB[2].trans.x != Mx[5][5]) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
      }
    } 
    if (contador == 1) {
      if (PiezasB[0].trans.x == Mx[7][5] && PiezasB[0].trans.y == My[7][5] && mousePressed && PiezasB[0].selectb == false) { 
        PiezasN[1].trans.x = Mx[4][5];
        PiezasN[1].trans.y = My[4][5];
        Turno = !Turno;
        cont=2;
      } else if ( (PiezasB[1].trans.x == Mx[6][4]||Mx[7][5] != PiezasB[1].trans.x) && Turno == false && PiezasB[1].selectb == false) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
        cont=0;
      }
    } 
    if (contador ==2) {
      if (PiezasB[1].trans.x == Mx[6][5] && PiezasB[1].trans.y == My[6][5] && mousePressed && PiezasB[1].selectb == false) {
        image(jm, height, height/4, 3*height/8, height/8);
        g=1;
      } else if ( (PiezasB[1].trans.x == Mx[5][7]||Mx[6][5] != PiezasB[1].trans.x) && Turno == false && PiezasB[1].selectb == false) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
        cont=0;
      }
    }
  } else if (n == 13) {
    image(p13, 0, 0, a, height-a/4);
    image(m3, a/4, 7*height/8, a/2, a/4);
    if (contador == 0) {
      if (PiezasB[1].trans.x == Mx[7][3] && PiezasB[1].trans.y == My[7][3] && mousePressed && PiezasB[1].selectb == false) {
        PiezasN[0].trans.x = Mx[4][5];
        PiezasN[0].trans.y = My[4][5];
        Turno = !Turno;
        cont=1;
      } else if (Turno == false && PiezasB[1].selectb == false && PiezasB[1].trans.x != Mx[7][3]) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
      }
    } 
    if (contador == 1) {
      if (PiezasB[1].trans.x == Mx[7][6] && PiezasB[1].trans.y == My[7][6] && mousePressed && PiezasB[1].selectb == false) { 
        PiezasN[0].trans.x = Mx[4][4];
        PiezasN[0].trans.y = My[4][4];
        Turno = !Turno;
        cont=2;
      } else if ( (PiezasB[1].trans.x == Mx[7][3]||Mx[7][6] != PiezasB[1].trans.x) && Turno == false && PiezasB[1].selectb == false) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
        cont=0;
      }
    } 
    if (contador ==2) {
      if (PiezasB[1].trans.x == Mx[4][6] && PiezasB[1].trans.y == My[4][6] && mousePressed && PiezasB[1].selectb == false) {
        image(jm, height, height/4, 3*height/8, height/8);
        g=1;
      } else if ( (PiezasB[1].trans.x == Mx[7][6]||Mx[4][6] != PiezasB[1].trans.x) && Turno == false && PiezasB[1].selectb == false) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
        cont=0;
      }
    }
  } else if (n == 14) {
    image(p14, 0, 0, a, height-a/1.5);
    image(m3, a/4, 7*height/8, a/2, a/4);
    if (contador == 0) {
      if (PiezasB[1].trans.x == Mx[6][3] && PiezasB[1].trans.y == My[6][3] && mousePressed && PiezasB[1].selectb == false) {
        PiezasB[1].trans.x = width;
        PiezasN[1].trans.x = Mx[6][3];
        PiezasN[1].trans.y = My[6][3];
        Turno = !Turno;
        cont=1;
      } else if (Turno == false && PiezasB[1].selectb == false && PiezasB[1].trans.x != Mx[6][3]) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
      }
    }
    if (contador == 1) {
      if (PiezasB[2].trans.x == Mx[5][2] && PiezasB[2].trans.y == My[5][2] && mousePressed && PiezasB[2].selectb == false) { 
        PiezasN[1].trans.x = Mx[7][5];
        PiezasN[1].trans.y = My[7][5];
        Turno = !Turno;
        cont=2;
      } else if ( (PiezasB[2].trans.x == Mx[4][4]||Mx[5][2] != PiezasB[2].trans.x) && Turno == false && PiezasB[2].selectb == false) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
        cont=0;
      }
    } 
    if (contador ==2) {
      if (PiezasB[3].trans.x == Mx[5][5] && PiezasB[3].trans.y == My[5][5] && mousePressed && PiezasB[3].selectb == false) {
        image(jm, height, height/4, 3*height/8, height/8);
        g=1;
      } else if ( (PiezasB[3].trans.x == Mx[3][6]||Mx[5][5] != PiezasB[3].trans.x) && Turno == false && PiezasB[3].selectb == false) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
        cont=0;
      }
    }
  } else if (n == 15) {
    image(p15, 0, 0, a, height-a/1.5);
    image(m3, a/4, 7*height/8, a/2, a/4);
    if (contador == 0) {
      if (PiezasB[1].trans.x == Mx[3][5] && PiezasB[1].trans.y == My[3][5] && mousePressed && PiezasB[1].selectb == false) {
        PiezasN[1].trans.x = Mx[3][3];
        PiezasN[1].trans.y = My[3][3];
        Turno = !Turno;
        cont=1;
      } else if (Turno == false && PiezasB[1].selectb == false && PiezasB[1].trans.x != Mx[3][5]) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
      }
    } 
    if (contador == 1) {
      if (PiezasB[2].trans.x == Mx[3][1] && PiezasB[2].trans.y == My[3][1] && mousePressed && PiezasB[2].selectb == false) { 
        PiezasN[1].trans.x = Mx[2][2];
        PiezasN[1].trans.y = My[2][2];
        Turno = !Turno;
        cont=2;
      } else if ( (PiezasB[2].trans.x == Mx[3][2]||Mx[3][1] != PiezasB[2].trans.x) && Turno == false && PiezasB[2].selectb == false) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
        cont=0;
      }
    } 
    if (contador ==2) {
      if (PiezasB[1].trans.x == Mx[2][5] && PiezasB[1].trans.y == My[2][5] && mousePressed && PiezasB[1].selectb == false) {
        image(jm, height, height/4, 3*height/8, height/8);
        g=1;
      } else if ( (PiezasB[1].trans.x == Mx[3][5]||Mx[2][5] != PiezasB[1].trans.x) && Turno == false && PiezasB[1].selectb == false) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
        cont=0;
      }
    }
  } 


  return n;
} 