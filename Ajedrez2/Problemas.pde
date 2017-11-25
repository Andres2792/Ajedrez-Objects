void problemas(int n) {
  switch(n) {
  case 1:
    // Piezas Blancas  
    PiezasB[0] = new Rey(Mx[2][5], My[2][5], true, "RB");
    PiezasB[1] = new Torre(Mx[5][6], My[5][6], true, "TB1");
    PiezasB[2] = new Alfil(Mx[6][5], My[6][5], true, "AB1");
    PiezasB[3] = new Peon(Mx[2][3], My[2][3], true, "PB1");
    PiezasB[4] = new Caballo(Mx[3][4], My[3][4], true, "CB1");
    PiezasB[5] = new Peon(Mx[3][3], My[3][3], true, "PB2");
    PiezasB[6] = new Torre(Mx[1][2], My[1][2], true, "TB2");

    // Piezas Negras   
    PiezasN[0] = new Rey(Mx[4][5], My[4][5], false, "RN");
    PiezasN[1] = new Reina(Mx[7][3], My[7][3], false, "QN");
    PiezasN[2] = new Alfil(Mx[5][2], My[5][2], false, "AN1");
    PiezasN[3] = new Peon(Mx[3][7], My[3][7], false, "PN1");
    j = 7;
    k = 4;

    break;

  case 2:
    // Piezas Blancas  
    PiezasB[0] = new Rey(Mx[7][4], My[7][4], true, "RB");
    PiezasB[1] = new Caballo(Mx[7][2], My[7][2], true, "CB1");
    PiezasB[2] = new Caballo(Mx[6][2], My[6][2], true, "CB2");
    PiezasB[3] = new Peon(Mx[6][3], My[6][3], true, "PB1");
    PiezasB[4] = new Alfil(Mx[5][3], My[5][3], true, "AB1");
    PiezasB[5] = new Torre(Mx[0][2], My[0][2], true, "TB1");  

    // Piezas Negras 
    PiezasN[0] = new Rey(Mx[6][1], My[6][1], false, "RN");
    PiezasN[1] = new Peon(Mx[1][0], My[1][0], false, "PN1");
    j = 6;
    k = 2;

    break;

  case 3:
    // Piezas Blancas  
    PiezasB[0] = new Rey(Mx[0][6], My[0][6], true, "RB");
    PiezasB[1] = new Torre(Mx[7][6], My[7][6], true, "TB1");
    PiezasB[2] = new Torre(Mx[3][6], My[3][6], true, "TB2");
    PiezasB[3] = new Reina(Mx[7][2], My[7][2], true, "DB");

    // Piezas Negras 
    PiezasN[0] = new Rey(Mx[5][7], My[5][7], false, "RN");
    PiezasN[1] = new Torre(Mx[4][3], My[4][3], false, "TN1");
    PiezasN[2] = new Alfil(Mx[2][3], My[2][3], false, "AN1");
    j = 4;
    k = 3;

    break;

  case 4:
    // Piezas Blancas
    PiezasB[0] = new Rey(Mx[6][1], My[6][1], true, "RB");
    PiezasB[1] = new Caballo(Mx[5][2], My[5][2], true, "CB1");
    PiezasB[2] = new Torre(Mx[4][7], My[4][7], true, "TB1");
    PiezasB[3] = new Peon(Mx[3][3], My[3][3], true, "PB1");
    PiezasB[4] = new Caballo(Mx[0][1], My[0][1], true, "CB2");

    // Piezas Negras  
    PiezasN[0] = new Rey(Mx[3][0], My[3][0], false, "RN");
    PiezasN[1] = new Peon(Mx[3][2], My[3][2], false, "PN1");
    j = 5;
    k = 2;

    break;

  case 5:
    // Piezas Blancas  
    PiezasB[0] = new Rey(Mx[7][7], My[7][7], true, "RB");
    PiezasB[1] = new Peon(Mx[6][5], My[6][5], true, "PB1");
    PiezasB[2] = new Torre(Mx[5][5], My[5][5], true, "TB1");
    PiezasB[3] = new Torre(Mx[4][3], My[4][3], true, "TB2");
    PiezasB[4] = new Caballo(Mx[4][5], My[4][5], true, "CB1");
    PiezasB[5] = new Alfil(Mx[3][2], My[3][2], true, "AB1");
    PiezasB[6] = new Reina(Mx[0][0], My[0][0], true, "QB");

    // Piezas Negras 
    PiezasN[0] = new Rey(Mx[7][5], My[7][5], false, "RN");
    PiezasN[1] = new Torre(Mx[7][1], My[7][1], false, "TN1");
    PiezasN[2] = new Torre(Mx[6][1], My[6][1], false, "TN2");
    PiezasN[3] = new Peon(Mx[2][6], My[2][6], false, "PN1");
    j = 7;
    k = 4;

    break;

  case 6:
    // Piezas Blancas  
    PiezasB[0] = new Rey(Mx[6][3], My[6][3], true, "RB");
    PiezasB[1] = new Torre(Mx[6][5], My[6][5], true, "TB1");
    PiezasB[2] = new Reina(Mx[2][0], My[2][0], true, "QB");
    PiezasB[3] = new Caballo(Mx[2][5], My[2][5], true, "CB1");
    PiezasB[4] = new Caballo(Mx[0][5], My[0][5], true, "CB2");

    // Piezas Negras
    PiezasN[0] = new Rey(Mx[3][4], My[3][4], false, "RN");
    PiezasN[1] = new Peon(Mx[4][3], My[4][3], false, "PN1");
    PiezasN[2] = new Peon(Mx[3][3], My[3][3], false, "PN2");
    PiezasN[3] = new Torre(Mx[1][6], My[1][6], false, "TN1");
    j = 5;
    k = 4;

    break;

  case 7:
    // Piezas Blancas  
    PiezasB[0] = new Rey(Mx[2][2], My[2][2], true, "RB");
    PiezasB[1] = new Torre(Mx[3][4], My[3][4], true, "TB1");
    PiezasB[2] = new Reina(Mx[4][6], My[4][6], true, "QB");

    // Piezas Negras
    PiezasN[0] = new Rey(Mx[1][5], My[1][5], false, "RN");
    PiezasN[1] = new Peon(Mx[2][5], My[2][5], false, "PN1");
    PiezasN[2] = new Alfil(Mx[0][5], My[0][5], false, "AN1");
    j = 3;
    k = 3;

    break;

  case 8:
    // Piezas Blancas  
    PiezasB[0] = new Caballo(Mx[5][4], My[5][4], true, "CB1");
    PiezasB[1] = new Alfil(Mx[5][7], My[5][7], true, "AB1");
    PiezasB[2] = new Caballo(Mx[4][4], My[4][4], true, "CB2");
    PiezasB[3] = new Torre(Mx[4][6], My[4][6], true, "TB1");
    PiezasB[4] = new Rey(Mx[2][7], My[2][7], true, "RB");
    PiezasB[5] = new Reina(Mx[1][1], My[1][1], true, "QB");

    // Piezas Negras
    PiezasN[0] = new Rey(Mx[2][4], My[2][4], false, "RN");
    PiezasN[1] = new Torre(Mx[7][6], My[7][6], false, "TN1");
    PiezasN[2] = new Peon(Mx[6][6], My[6][6], false, "PN1");
    j = 6;
    k = 3;

    break;

  case 9:
    // Piezas Blancas  
    PiezasB[0] = new Rey(Mx[0][7], My[0][7], true, "RB");
    PiezasB[1] = new Reina(Mx[3][4], My[3][4], true, "QB");
    PiezasB[2] = new Caballo(Mx[2][6], My[2][6], true, "CB1");
    PiezasB[3] = new Torre(Mx[1][1], My[1][1], true, "TB1");
    PiezasB[4] = new Alfil(Mx[1][4], My[1][4], true, "AB1");
    PiezasB[5] = new Torre(Mx[3][1], My[3][1], true, "TB2");

    // Piezas Negras
    PiezasN[0] = new Rey(Mx[2][2], My[2][2], false, "RN");
    PiezasN[1] = new Torre(Mx[7][2], My[7][2], false, "TN1");
    PiezasN[2] = new Peon(Mx[5][4], My[5][4], false, "PN1");
    PiezasN[3] = new Alfil(Mx[4][3], My[4][3], false, "AN1");
    PiezasN[4] = new Peon(Mx[1][0], My[1][0], false, "PN2");
    PiezasN[5] = new Peon(Mx[1][7], My[1][7], false, "PN3");
    PiezasN[6] = new Caballo(Mx[0][0], My[0][0], false, "CN1");
    j = 6;
    k = 7;           

    break;

  case 10:
    // Piezas Blancas  
    PiezasB[0] = new Rey(Mx[6][7], My[6][7], true, "RB");
    PiezasB[1] = new Torre(Mx[7][0], My[7][0], true, "TB1");
    PiezasB[2] = new Torre(Mx[4][5], My[4][5], true, "TB2");
    PiezasB[3] = new Peon(Mx[1][2], My[1][2], true, "PB1");
    PiezasB[4] = new Caballo(Mx[0][0], My[0][0], true, "CB1");
    PiezasB[5] = new Reina(Mx[0][2], My[0][2], true, "QB");

    // Piezas Negras
    PiezasN[0] = new Rey(Mx[1][0], My[1][0], false, "RN");
    PiezasN[1] = new Alfil(Mx[4][0], My[4][0], false, "AN1");
    PiezasN[2] = new Alfil(Mx[3][0], My[3][0], false, "AN2");
    j = 6;
    k = 3;

    break;

  case 11:
    // Piezas Blancas  
    PiezasB[0] = new Rey(Mx[0][0], My[0][0], true, "RB");
    PiezasB[1] = new Peon(Mx[5][3], My[5][3], true, "PN1");
    PiezasB[2] = new Peon(Mx[4][2], My[4][2], true, "PB2");
    PiezasB[3] = new Peon(Mx[4][4], My[4][4], true, "PB3");
    PiezasB[4] = new Peon(Mx[3][0], My[3][0], true, "PB4");
    PiezasB[5] = new Peon(Mx[3][3], My[3][3], true, "PB5");
    PiezasB[6] = new Alfil(Mx[5][4], My[5][4], true, "AB1");

    // Piezas Negras
    PiezasN[0] = new Rey(Mx[5][2], My[5][2], false, "RN");
    PiezasN[1] = new Caballo(Mx[7][4], My[7][4], false, "CN1");
    PiezasN[2] = new Caballo(Mx[0][1], My[0][1], false, "CN2");
    PiezasN[3] = new Alfil(Mx[7][1], My[7][1], false, "AN1");
    PiezasN[4] = new Torre(Mx[6][1], My[6][1], false, "TN1");
    PiezasN[5] = new Peon(Mx[6][2], My[6][2], false, "PN1");
    PiezasN[6] = new Reina(Mx[0][7], My[0][7], false, "QN");
    PiezasB[7] = new Reina(Mx[1][4], My[1][4], true, "QB");
    j = 8;
    k = 7;           

    break;

  case 12:
    // Piezas Blancas  
    PiezasB[0] = new Rey(Mx[6][4], My[6][4], true, "RB");
    PiezasB[1] = new Caballo(Mx[5][7], My[5][7], true, "CB1");
    PiezasB[2] = new Alfil(Mx[0][0], My[0][0], true, "AB1"); 

    // Piezas Negras
    PiezasN[0] = new Rey(Mx[7][7], My[7][7], false, "RN");
    PiezasN[1] = new Peon(Mx[6][6], My[6][6], false, "PN1");
    PiezasN[2] = new Peon(Mx[6][7], My[6][7], false, "PN2"); 
    j = 3;
    k = 3;

    break;

  case 13:
    // Piezas Blancas  
    PiezasB[0] = new Rey(Mx[6][4], My[6][4], true, "RB");
    PiezasB[1] = new Torre(Mx[5][3], My[5][3], true, "TB1");
    PiezasB[2] = new Reina(Mx[2][4], My[2][4], true, "QB");

    // Piezas Negras
    PiezasN[0] = new Rey(Mx[4][4], My[4][4], false, "RN");
    PiezasN[1] = new Peon(Mx[5][4], My[5][4], false, "PN1");
    PiezasN[2] = new Caballo(Mx[3][4], My[3][4], false, "CN1");
    j = 3;
    k = 3;

    break;

  case 14:
    // Piezas Blancas
    PiezasB[0] = new Rey(Mx[7][6], My[7][6], true, "RB");
    PiezasB[1] = new Torre(Mx[6][7], My[6][7], true, "TB1");
    PiezasB[2] = new Caballo(Mx[4][4], My[4][4], true, "CB1");
    PiezasB[3] = new Caballo(Mx[3][6], My[3][6], true, "CB1");

    //Piezas Negras
    PiezasN[0] = new Rey(Mx[7][4], My[7][4], false, "RN");
    PiezasN[1] = new Caballo(Mx[7][1], My[7][1], false, "CN1");
    j = 4;
    k = 2;

    break;

  case 15:
    // Piezas Blancas
    PiezasB[0] = new Rey(Mx[0][3], My[0][3], true, "RB");
    PiezasB[1] = new Torre(Mx[3][4], My[3][4], true, "TB2");
    PiezasB[2] = new Torre(Mx[3][2], My[3][2], true, "TB1");
    PiezasB[3] = new Caballo(Mx[1][3], My[1][3], true, "CB1");

    // Piezas Negras
    PiezasN[0] = new Rey(Mx[2][3], My[2][3], false, "RN");
    PiezasN[1] = new Alfil(Mx[7][7], My[7][7], false, "AN1");

    j = 4;
    k = 2;

    break;

  default:
    // Piezas Blancas
    PiezasB[0] = new Rey(Mx[0][4], My[0][4], true, "RB");
    PiezasB[1] = new Reina(Mx[0][3], My[0][3], true, "QB");
    PiezasB[2] = new Alfil(Mx[0][2], My[0][2], true, "AB1");
    PiezasB[3] = new Alfil(Mx[0][5], My[0][5], true, "AB2");
    PiezasB[4] = new Caballo(Mx[0][1], My[0][1], true, "CB1");
    PiezasB[5] = new Caballo(Mx[0][6], My[0][6], true, "CB2");
    PiezasB[6] = new Torre(Mx[0][0], My[0][0], true, "TB1");
    PiezasB[7] = new Torre(Mx[0][7], My[0][7], true, "TB2");
    PiezasB[8] = new Peon(Mx[1][0], My[1][0], true, "PB1");
    PiezasB[9] = new Peon(Mx[1][1], My[1][1], true, "PB2");
    PiezasB[10] = new Peon(Mx[1][2], My[1][2], true, "PB3");
    PiezasB[11] = new Peon(Mx[1][3], My[1][3], true, "PB4");
    PiezasB[12] = new Peon(Mx[1][4], My[1][4], true, "PB5");
    PiezasB[13] = new Peon(Mx[1][5], My[1][5], true, "PB6");
    PiezasB[14] = new Peon(Mx[1][6], My[1][6], true, "PB7");
    PiezasB[15] = new Peon(Mx[1][7], My[1][7], true, "PB8");

    // Piezas Negras
    PiezasN[0] = new Rey(Mx[7][4], My[7][4], false, "RN");
    PiezasN[1] = new Reina(Mx[7][3], My[7][3], false, "QN");
    PiezasN[2] = new Alfil(Mx[7][2], My[7][2], false, "AN1");
    PiezasN[3] = new Alfil(Mx[7][5], My[7][5], false, "AN2");
    PiezasN[4] = new Caballo(Mx[7][1], My[7][1], false, "CN1");
    PiezasN[5] = new Caballo(Mx[7][6], My[7][6], false, "CN2");
    PiezasN[6] = new Torre(Mx[7][0], My[7][0], false, "TN1");
    PiezasN[7] = new Torre(Mx[7][7], My[7][7], false, "TN2");
    PiezasN[8] = new Peon(Mx[6][0], My[6][0], false, "PN1");
    PiezasN[9] = new Peon(Mx[6][1], My[6][1], false, "PN2");
    PiezasN[10] = new Peon(Mx[6][2], My[6][2], false, "PN3");
    PiezasN[11] = new Peon(Mx[6][3], My[6][3], false, "PN4");
    PiezasN[12] = new Peon(Mx[6][4], My[6][4], false, "PN5");
    PiezasN[13] = new Peon(Mx[6][5], My[6][5], false, "PN6");
    PiezasN[14] = new Peon(Mx[6][6], My[6][6], false, "PN7");
    PiezasN[15] = new Peon(Mx[6][7], My[6][7], false, "PN8");
    j = 16;
    k = 16;

    break;
  }
}