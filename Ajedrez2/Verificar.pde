int verificar(int n, int contador) {
  if (n == 1) {
    image(p1, 0, 0, a, height-a/4);
    image(m2, a/4, 7*height/8, a/2, a/4);
    if (contador == 0) {
      if (PiezasB[6].trans.x == Mx[1][5] && PiezasB[6].trans.y == My[1][5] && mousePressed) {
        delay(100);
        PiezasB[5].trans.x = width;
        PiezasN[1].trans.x = Mx[3][3];
        PiezasN[1].trans.y = My[3][3];
        Turno = !Turno;
      } else if (Turno == false && PiezasB[6].selectb == false && PiezasB[6].trans.x != Mx[1][5]) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
      }
    } else if (contador == 1) {
      if (PiezasB[1].trans.x == Mx[4][6] && PiezasB[1].trans.y == My[4][6] && mousePressed) { 
        image(jm, height, height/4, 3*height/8, height/8);
        n++;
        keyPressed();
        return n;
      } else if ( (PiezasB[1].trans.x == Mx[5][6]||Mx[4][6] != PiezasB[1].trans.x) && Turno == false && PiezasB[1].selectb == false) {
        image(mal, a, height/4, 3*height/4, 3*height/4);
        problemas(n);
        Turno = true;
      }
    }
  } else if (n==2) {
    image(p2, 0, 0, a, height-a/2);
    image(m2, a/4, 7*height/8, a/2, a/4);
  } else if (n==3) {
    image(p3, 0, 0, a, height-a/2);
    image(m2, a/4, 7*height/8, a/2, a/4);
  } else if (n==4) {
    image(p4, 0, 0, a, height-a/4);
    image(m2, a/4, 7*height/8, a/2, a/4);
  } else if (n==5) {
    image(p5, 0, 0, a, height-a/1.5);
    image(m2, a/4, 7*height/8, a/2, a/4);
  } else if (n==6) {
    image(p6, 0, 0, a, height-a/1.3);
    image(m2, a/4, 7*height/8, a/2, a/4);
  } else if (n==7) {
    image(p7, 0, 0, a, height-a/4);
    image(m2, a/4, 7*height/8, a/2, a/4);
  } else if (n==8) {
    image(p8, 0, 0, a, height-a/4);
    image(m2, a/4, 7*height/8, a/2, a/4);
  } else if (n==9) {
    image(p9, 0, 0, a, height-a/1.5);
    image(m2, a/4, 7*height/8, a/2, a/4);
  } else if (n==10) {
    image(p10, 0, 0, a, height-a/1.5);
    image(m2, a/4, 7*height/8, a/2, a/4);
  } else if (n==11) {
    image(p11, 20, 0, a-30, height+10-a/5);
    image(m3, a/4, 7*height/8, a/2, a/4);
  } else if (n==12) {
    image(p12, 0, 0, a, height-a/4);
    image(m3, a/4, 7*height/8, a/2, a/4);
  } else if (n==13) {
    image(p13, 0, 0, a, height-a/4);
    image(m3, a/4, 7*height/8, a/2, a/4);
  } else if (n==14) {
    image(p14, 0, 0, a, height-a/1.5);
    image(m3, a/4, 7*height/8, a/2, a/4);
  } else if (n==15) {
    image(p15, 0, 0, a, height-a/1.5);
    image(m3, a/4, 7*height/8, a/2, a/4);
  }


  return n;
} 