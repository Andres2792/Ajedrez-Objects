void diagii(int x, int y, boolean selectb) { // Creacion de la Diagonal Inferior
  if (selectb == true) {
    for (int i = 1; i < 8; i++) {
      for (int q=0; q<j; q++) {
        if ((y - i) >= 0 && (x - i) >= 0) {
          if (PiezasN[q].trans.x ==Mx[y-i][x-i]&&PiezasN[q].trans.y ==My[y-i][x-i]) {
            fill(224,80,247,100);
            rect(Mx[y-i][x-i], My[y-i][x-i], height/8, height/8);
            i=8;
            q=j;
          } else if (PiezasB[q].trans.x ==Mx[y-i][x-i]&&PiezasB[q].trans.y ==My[y-i][x-i] ) {
            i=8;
            q=j;
          } else {
            fill(#FA4417);
            rect(Mx[y-i][x-i], My[y-i][x-i], height/8, height/8);
          }
        }
      }
    }
  } else if (selectb == false) {
    for (int i = 1; i < 8; i++) {
      for (int q=0; q<k; q++) {
        if ((y - i) >= 0 && (x - i) >= 0) {
          if (PiezasB[q].trans.x ==Mx[y-i][x-i]&&PiezasB[q].trans.y ==My[y-i][x-i]) {
            fill(224,80,247,100);
            rect(Mx[y-i][x-i], My[y-i][x-i], height/8, height/8);
            i=8;
            q=k;
          } else if (PiezasN[q].trans.x ==Mx[y-i][x-i]&&PiezasN[q].trans.y ==My[y-i][x-i] ) {
            i=8;
            q=k;
          } else {
            fill(#FA4417);
            rect(Mx[y-i][x-i], My[y-i][x-i], height/8, height/8);
          }
        }
      }
    }
  }
}
void diagid(int x, int y, boolean selectb) {// Creacion de la Diagonal Inferior Derecha
  if (selectb == true) {
    for (int i = 1; i < 8; i++) {
      for (int q=0; q<j; q++) {
        if ((y - i) >= 0 && (x + i) < 8) {
          if (PiezasN[q].trans.x ==Mx[y-i][x+i]&&PiezasN[q].trans.y ==My[y-i][x+i]) {
            fill(224,80,247,100);
            rect(Mx[y-i][x+i], My[y-i][x+i], height/8, height/8);
            i=8;
            q=j;
          } else if (PiezasB[q].trans.x ==Mx[y-i][x+i]&&PiezasB[q].trans.y ==My[y-i][x+i] ) {
            i=8;
            q=j;
          } else {
            fill(#FA4417);
            rect(Mx[y-i][x+i], My[y-i][x+i], height/8, height/8);
          }
        }
      }
    }
  } else if (selectb == false) {
    for (int i = 1; i < 8; i++) {
      for (int q=0; q<k; q++) {
        if ((y - i) >= 0 && (x + i) < 8) {
          if (PiezasB[q].trans.x ==Mx[y-i][x+i]&&PiezasB[q].trans.y ==My[y-i][x+i]) {
            fill(224,80,247,100);
            rect(Mx[y-i][x+i], My[y-i][x+i], height/8, height/8);
            i=8;
            q=k;
          } else if (PiezasN[q].trans.x ==Mx[y-i][x+i]&&PiezasN[q].trans.y ==My[y-i][x+i] ) {
            i=8;
            q=k;
          } else {
            fill(#FA4417);
            rect(Mx[y-i][x+i], My[y-i][x+i], height/8, height/8);
          }
        }
      }
    }
  }
}

void diagsi(int x, int y, boolean selectb) { // Creacion de la Diagonal Superior Izquierda
  if (selectb == true) {
    for (int i = 1; i < 8; i++) {
      for (int q=0; q<j; q++) {
        if ((y + i) < 8 && (x - i) >= 0) {
          if (PiezasN[q].trans.x ==Mx[y+i][x-i]&&PiezasN[q].trans.y ==My[y+i][x-i] ) {
            fill(224,80,247,100);
            rect(Mx[y+i][x-i], My[y+i][x-i], height/8, height/8);
            i=8;
            q=j;
          } else if (PiezasB[q].trans.x ==Mx[y+i][x-i]&&PiezasB[q].trans.y ==My[y+i][x-i] ) {
            i=8;
            q=j;
          } else {
            fill(#FA4417);
            rect(Mx[y+i][x-i], My[y+i][x-i], height/8, height/8);
          }
        }
      }
    }
  } else if (selectb == false) {
    for (int i = 1; i < 8; i++) {
      for (int q=0; q<k; q++) {
        if ((y + i) < 8 && (x - i) >= 0) {
          if (PiezasN[q].trans.x ==Mx[y+i][x-i]&&PiezasN[q].trans.y ==My[y+i][x-i] ) {
            fill(224,80,247,100);
            rect(Mx[y+i][x-i], My[y+i][x-i], height/8, height/8);
            i=8;
            q=k;
          } else if (PiezasB[q].trans.x ==Mx[y+i][x-i]&&PiezasB[q].trans.y ==My[y+i][x-i] ) {
            i=8;
            q=k;
          } else {
            fill(#FA4417);
            rect(Mx[y+i][x-i], My[y+i][x-i], height/8, height/8);
          }
        }
      }
    }
  }
}
void diagsd(int x, int y, boolean selectb) { // Creacion de la Diagonal Superior Derecha 
  if (selectb == true) {
    for (int i = 1; i < 8; i++) {
      for (int q=0; q<j; q++) {
        if ((y + i) < 8 && (x + i) < 8) {
          if (PiezasN[q].trans.x ==Mx[y+i][x+i]&&PiezasN[q].trans.y ==My[y+i][x+i]) {
            fill(224,80,247,100);
            rect(Mx[y+i][x+i], My[y+i][x+i], height/8, height/8);
            i=8;
            q=j;
          } else if (PiezasB[q].trans.x ==Mx[y+i][x+i]&&PiezasB[q].trans.y ==My[y+i][x+i] ) {
            i=8;
            q=j;
          } else {
            fill(#FA4417);
            rect(Mx[y+i][x+i], My[y+i][x+i], height/8, height/8);
          }
        }
      }
    }
  } else if (selectb == false) {
    for (int i = 1; i < 8; i++) {
      for (int q=0; q<k; q++) {
        if ((y + i) < 8 && (x + i) < 8) {
          if (PiezasB[q].trans.x ==Mx[y+i][x+i]&&PiezasB[q].trans.y ==My[y+i][x+i]) {
            fill(224,80,247,100);
            rect(Mx[y+i][x+i], My[y+i][x+i], height/8, height/8);
            i=8;
            q=k;
          } else if (PiezasN[q].trans.x ==Mx[y+i][x+i]&&PiezasN[q].trans.y ==My[y+i][x+i] ) {
            i=8;
            q=k;
          } else {
            fill(#FA4417);
            rect(Mx[y+i][x+i], My[y+i][x+i], height/8, height/8);
          }
        }
      }
    }
  }
}
void arriba(int x, int y, boolean selectb) {
  if (selectb == true) {
    for (int i = 1; i < 8; i++) {
      for (int q=0; q<j; q++) {
        if ((y + i) < 8) {
          if (PiezasN[q].trans.x ==Mx[y+i][x]&&PiezasN[q].trans.y ==My[y+i][x]) {
            fill(224,80,247,100);
            rect(Mx[y+i][x], My[y+i][x], height/8, height/8);
            i=8;
            q=j;
          } else if (PiezasB[q].trans.x ==Mx[y+i][x]&&PiezasB[q].trans.y ==My[y+i][x] ) {
            i=8;
            q=j;
          } else {
            fill(#FA4417);
            rect(Mx[y+i][x], My[y+i][x], height/8, height/8);
          }
        }
      }
    }
  } else if (selectb == false) {
    for (int i = 1; i < 8; i++) {
      for (int q=0; q<k; q++) {
        if ((y + i) < 8) {
          if (PiezasB[q].trans.x ==Mx[y+i][x]&&PiezasB[q].trans.y ==My[y+i][x]) {
            fill(224,80,247,100);
            rect(Mx[y+i][x], My[y+i][x], height/8, height/8);
            i=8;
            q=k;
          } else if (PiezasN[q].trans.x ==Mx[y+i][x]&&PiezasN[q].trans.y ==My[y+i][x] ) {
            i=8;
            q=k;
          } else {
            fill(#FA4417);
            rect(Mx[y+i][x], My[y+i][x], height/8, height/8);
          }
        }
      }
    }
  }
}         


void abajo(int x, int y, boolean selectb) {
  if (selectb == true) {
    for (int i = 1; i < 8; i++) {
      for (int q=0; q<j; q++) {
        if ((y - i) >= 0) {
          if (PiezasN[q].trans.x ==Mx[y-i][x]&&PiezasN[q].trans.y ==My[y-i][x]) {
            fill(224,80,247,100);
            rect(Mx[y-i][x], My[y-i][x], height/8, height/8);
            i=8;
            q=j;
          } else if (PiezasB[q].trans.x ==Mx[y-i][x]&&PiezasB[q].trans.y ==My[y-i][x] ) {
            i=8;
            q=j;
          } else {
            fill(#FA4417);
            rect(Mx[y-i][x], My[y-i][x], height/8, height/8);
          }
        }
      }
    }
  } else if (selectb == false) {
    for (int i = 1; i < 8; i++) {
      for (int q=0; q<k; q++) {
        if ((y - i) >= 0) {
          if (PiezasB[q].trans.x ==Mx[y-i][x]&&PiezasB[q].trans.y ==My[y-i][x]) {
            fill(224,80,247,100);
            rect(Mx[y-i][x], My[y-i][x], height/8, height/8);
            i=8;
            q=k;
          } else if (PiezasN[q].trans.x ==Mx[y-i][x]&&PiezasN[q].trans.y ==My[y-i][x] ) {
            i=8;
            q=k;
          } else {
            fill(#FA4417);
            rect(Mx[y-i][x], My[y-i][x], height/8, height/8);
          }
        }
      }
    }
  }
}


void izq(int x, int y, boolean selectb) {
  if (selectb == true) {
    for (int i = 1; i < 8; i++) {
      for (int q=0; q<j; q++) {
        if ((x - i) >= 0) {
          if (PiezasN[q].trans.x ==Mx[y][x-i]&&PiezasN[q].trans.y ==My[y][x-i]) {
            fill(224,80,247,100);
            rect(Mx[y][x-i], My[y][x-i], height/8, height/8);
            i=8;
            q=j;
          } else if (PiezasB[q].trans.x ==Mx[y][x-i]&&PiezasB[q].trans.y ==My[y][x-i] ) {
            i=8;
            q=j;
          } else {
            fill(#FA4417);
            rect(Mx[y][x-i], My[y][x-i], height/8, height/8);
          }
        }
      }
    }
  } else if (selectb == false) {
    for (int i = 1; i < 8; i++) {
      for (int q=0; q<k; q++) {
        if ((x - i) >= 0) {
          if (PiezasB[q].trans.x ==Mx[y][x-i]&&PiezasB[q].trans.y ==My[y][x-i]) {
            fill(224,80,247,100);
            rect(Mx[y][x-i], My[y][x-i], height/8, height/8);
            i=8;
            q=k;
          } else if (PiezasN[q].trans.x ==Mx[y][x-i]&&PiezasN[q].trans.y ==My[y][x-i]) {
            i=8;
            q=k;
          } else {
            fill(#FA4417);
            rect(Mx[y][x-i], My[y][x-i], height/8, height/8);
          }
        }
      }
    }
  }
}

void der(int x, int y, boolean selectb) {
  if (selectb == true) {
    for (int i = 1; i < 8; i++) {
      for (int q=0; q<j; q++) {
        if ((x + i) < 8) {
          if (PiezasN[q].trans.x ==Mx[y][x+i]&&PiezasN[q].trans.y ==My[y][x+i]) {
            fill(224,80,247,100);
            rect(Mx[y][x+i], My[y][x+i], height/8, height/8);
            i=8;
            q=j;
          } else if (PiezasB[q].trans.x ==Mx[y][x+i]&&PiezasB[q].trans.y ==My[y][x+i] ) {
            i=8;
            q=j;
          } else {
            fill(#FA4417);
            rect(Mx[y][x+i], My[y][x+i], height/8, height/8);
          }
        }
      }
    }
  } else if (selectb == false) {
    for (int i = 1; i < 8; i++) {
      for (int q=0; q<k; q++) {
        if ((x + i) < 8) {
          if (PiezasB[q].trans.x ==Mx[y][x+i]&&PiezasB[q].trans.y ==My[y][x+i]) {
            fill(224,80,247,100);
            rect(Mx[y][x+i], My[y][x+i], height/8, height/8);
            i=8;
            q=k;
          } else if (PiezasN[q].trans.x ==Mx[y][x+i]&&PiezasN[q].trans.y ==My[y][x+i]) {
            i=8;
            q=k;
          } else {
            fill(#FA4417);
            rect(Mx[y][x+i], My[y][x+i], height/8, height/8);
          }
        }
      }
    }
  }
}