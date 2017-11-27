PImage rb;
PImage rn;
PImage db;
PImage dn;
PImage ab;
PImage an;
PImage cb;
PImage cn;
PImage tb;
PImage tn;
PImage pb;
PImage pn;
PImage p1;
PImage p2;
PImage p3;
PImage p4;
PImage p5;
PImage p6;
PImage p7;
PImage p8;
PImage p9;
PImage p10;
PImage p11;
PImage p12;
PImage p13;
PImage p14;
PImage p15;
PImage m2;
PImage m3;
PImage ml;
PImage jm;
PImage mal;
PImage bh;
PImage bh2;
PImage i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13;
PImage i[] = new PImage[13];
boolean Turno = true;
//botones (1-3 inicio) (4-18 jugar)
boolean bot1 = false;
boolean bot2 = false;
boolean bot3 = false;
boolean bot4 = false;
boolean bot5 = false;
boolean bot6 = false;
boolean bot7 = false;
boolean bot8 = false;
boolean bot9 = false;
boolean bot10 = false;
boolean bot11 = false;
boolean bot12 = false;
boolean bot13 = false;
boolean bot14 = false;
boolean bot15 = false;
boolean bot16 = false;
boolean bot17 = false;
boolean bot18 = false;
boolean []arr={bot1, bot2, bot3, bot4, bot5, bot6, bot7, bot8, bot9, bot10, bot11, bot12, bot13, bot14, bot15, bot16, bot17, bot18};
boolean inicio = true;
int fila = 8;
int columna = 8;
int t = 7;
int n = 1;
int j, k;
int[][] Mx;
int[][] My;
Piezas[] PiezasB;
Piezas[] PiezasN;
PImage ini;
Btom[] b = new Btom [18];
int tc;
int ttc;
int a, c, p = 0;
int contador = 0;
boolean s = true;
int cont = 0;
int g;


void setup() {

  // Portada - Configuracion de la pantalla
  if (width-height > 300) {
    a = 400;
  } else {
    a = width - height;
  }

  // Creacion de los 3 botones
  b[0] = new Btom ( height/8, 6*height/8, width/4, height/10, color(0, 128, 255), "Jugar");
  b[1] = new Btom (5*height/8, 6*height/8, width/4, height/10, color(0, 128, 255), "Modo Libre");
  b[2] = new Btom (9*height/8, 6*height/8, width/4, height/10, color(0, 128, 255), "Instrucciones");
  //creacion botones niveles
  b[3] = new Btom ( height/6, height/8, height/6, height/6, color(0, 128, 255), "P1");
  b[4] = new Btom ( 3*height/6, height/8, height/6, height/6, color(0, 128, 255), "P2");
  b[5] = new Btom ( 5*height/6, height/8, height/6, height/6, color(0, 128, 255), "P3");
  b[6] = new Btom ( 7*height/6, height/8, height/6, height/6, color(0, 128, 255), "P4");
  b[7] = new Btom ( 9*height/6, height/8, height/6, height/6, color(0, 128, 255), "P5");
  b[8] = new Btom ( height/6, 2.5*height/8, height/6, height/6, color(0, 128, 255), "P6");
  b[9] = new Btom ( 3*height/6, 2.5*height/8, height/6, height/6, color(0, 128, 255), "P7");
  b[10] = new Btom ( 5*height/6, 2.5*height/8, height/6, height/6, color(0, 128, 255), "P8");
  b[11] = new Btom ( 7*height/6, 2.5*height/8, height/6, height/6, color(0, 128, 255), "P9");
  b[12] = new Btom ( 9*height/6, 2.5*height/8, height/6, height/6, color(0, 128, 255), "P10");
  b[13] = new Btom ( height/6, 4*height/8, height/6, height/6, color(0, 128, 255), "P11");
  b[14] = new Btom ( 3*height/6, 4*height/8, height/6, height/6, color(0, 128, 255), "P12");
  b[15] = new Btom ( 5*height/6, 4*height/8, height/6, height/6, color(0, 128, 255), "P13");
  b[16] = new Btom ( 7*height/6, 4*height/8, height/6, height/6, color(0, 128, 255), "P14");
  b[17] = new Btom ( 9*height/6, 4*height/8, height/6, height/6, color(0, 128, 255), "P15");

  // Carga e Inicio de las imagenes de la portada
  ini = loadImage("a1.jpg");

  // Ubicación - Creacion de la matriz de cordenadas
  Mx = new int[columna][fila];
  My = new int[columna][fila];

  for (int i = 0; i < 8; i++) {
    for (int j = 0; j < 8; j++) {
      Mx[i][j] = a+(height/8)*j;
      My[i][j] = (height/8)*t;
    }
    t--;
  }

  //Piezas - Creacion de arreglo de Piezas y carga de las imagenes
  PiezasB = new Piezas[16];
  PiezasN = new Piezas[16];

  background(0);
  fullScreen();
  rb = loadImage("rb.png");
  rn = loadImage("rn.png");
  db = loadImage("db.png");
  dn = loadImage("dn.png");
  ab = loadImage("ab.png");
  an = loadImage("an.png");
  cb = loadImage("cb.png");
  cn = loadImage("cn.png");
  tb = loadImage("tb.png");
  tn = loadImage("tn.png");
  pb = loadImage("pb.png");
  pn = loadImage("pn.png");
  p1 = loadImage("p1.png");
  p2 = loadImage("p2.png");
  p3 = loadImage("p3.png");
  p4 = loadImage("p4.png");
  p5 = loadImage("p5.png");
  p6 = loadImage("p6.png");
  p7 = loadImage("p7.png");
  p8 = loadImage("p8.png");
  p9 = loadImage("p9.png");
  p10 = loadImage("p10.png");
  p11 = loadImage("p11.png");
  p12 = loadImage("p12.png");
  p13 = loadImage("p13.png");
  p14 = loadImage("p14.png");
  p15 = loadImage("p15.png");
  m2 = loadImage("m2.png");
  m3 = loadImage("m3.png");
  jm = loadImage("jm.png");
  mal = loadImage("mal.png");
  ml = loadImage("ml.png");
  bh = loadImage("bh.png");
  bh2 = loadImage("bh2.png");

  // Creacion de arreglo de Instrucciones y Carga imagenes de Instrucciones
  i1 = loadImage("1.png");
  i2 = loadImage("2.png");
  i3 = loadImage("3.png");
  i4 = loadImage("4.png");
  i5 = loadImage("Rey.png");
  i6 = loadImage("Peon.png");
  i9 = loadImage("Dama.png");
  i8 = loadImage("Alfil.png");
  i7 = loadImage("Torre.png");
  i10 = loadImage("Caballo.png");
  i11 = loadImage("5.png");
  i12 = loadImage("6.png");
  i13 = loadImage("7.png");
  i[0]= i1;
  i[1]= i2;
  i[2]= i3;
  i[3]= i4;
  i[4]= i5;
  i[5]= i6;
  i[6]= i7;
  i[7]= i8;
  i[8]= i9;
  i[9]= i10;
  i[10]= i11;
  i[11]= i12;
  i[12]= i13;

  // Definicion de las primeras posiciones
  problemas(n);
}


void draw() {

  background(0);
  image(ini, 0, 0, width, height);

  // Pinta los botones siempre que el inicio sea True
  if (inicio == true) {
    for (int i = 0; i < 3; i++) { 
      b[i].pintar();
      tc = millis()/1000;
    }
  }
  // Realiza cierta accion dependiendo de que boton haya sido presionado 
  if (bot1 == true) {
    background(0);
    image(bh, 0, 0, width, height);
    for (int i = 3; i < 18; i++) { 
      b[i].pintar();
      tc = millis()/1000;
    }
    if (keyPressed &&key=='i') {
      bot1 = false; 
      background(0);
      image(ini, 0, 0, width, height);
      inicio = true;

      // Pinta los botones siempre que el inicio sea True
      if (inicio == true) {
        for (int i = 0; i < 3; i++) { 
          b[i].pintar();
          tc = millis()/1000;
        }
      }
      for (int i=0; i<18; i++) {
        arr[i]=false;
      }
    }
  }   

  if (bot2 == true) {
    n=17;
    background(0);
    Tablero();
    image(ml, 0, 0, a, height-a/2);
    for (int i = 0; i < j; i++) {
      PiezasB[i].draw();
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].draw();
    }
    for (int i = 0; i < j; i++) {
      PiezasB[i].updateb(mouseX, mouseY);
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].updaten(mouseX, mouseY);
    }
  } 

  if (bot3 == true) {

    if (keyPressed) {
      p++;
    }

    if (p == 13) {
      // Vuelve al menu cuando no hay mas instrucciones
      bot3 = false; 
      background(0);
      image(ini, 0, 0, width, height);
      inicio = true;

      // Pinta los botones siempre que el inicio sea True
      if (inicio == true) {
        for (int i = 0; i < 3; i++) { 
          b[i].pintar();
          tc = millis()/1000;
        }
      }
    } else {
      // Pinta la instruccion (imagen) almacenada en la pocicion del arreglo i[p]
      background(0);
      image(i[p], 0, 0, width, height);
    }
  }
  if (bot4 == true) {
    n=1;
    background(0);
    Tablero();
    for (int i = 0; i < j; i++) {
      PiezasB[i].draw();
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].draw();
    }
    for (int i = 0; i < j; i++) {
      PiezasB[i].updateb(mouseX, mouseY);
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].updaten(mouseX, mouseY);
    }
    verificar(1, cont);
    if (g==1) {
      image(bh2, -10, 0, width, height);
      b[3].setCol(#42E34E);
      if (keyPressed ) {
        if (key=='m'||key=='M') {
          bot4=false;
          bot1=true;
          inicio=true;
          g=0;
        }
      }
    }
  }

  if (bot5 == true) {
    n=2;
    background(0);
    Tablero();
    for (int i = 0; i < j; i++) {
      PiezasB[i].draw();
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].draw();
    }
    for (int i = 0; i < j; i++) {
      PiezasB[i].updateb(mouseX, mouseY);
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].updaten(mouseX, mouseY);
    }
    verificar(2, cont);
    if (g==1) {
      image(bh2, -10, 0, width, height);
      b[4].setCol(#42E34E);
      if (keyPressed ) {
        if (key=='m'||key=='M') {
          bot5=false;
          bot1=true;
          inicio=true;
          g=0;
        }
      }
    }
  }
  if (bot6 == true) {
    n=3;
    background(0);
    Tablero();
    for (int i = 0; i < j; i++) {
      PiezasB[i].draw();
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].draw();
    }
    for (int i = 0; i < j; i++) {
      PiezasB[i].updateb(mouseX, mouseY);
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].updaten(mouseX, mouseY);
    }
    verificar(3, cont);
    if (g==1) {
      image(bh2, -10, 0, width, height);
      b[5].setCol(#42E34E);
      if (keyPressed ) {
        if (key=='m'||key=='M') {
          bot6=false;
          bot1=true;
          inicio=true;
          g=0;
        }
      }
    }
  }
  if (bot7 == true) {
    n=4;
    background(0);
    Tablero();
    for (int i = 0; i < j; i++) {
      PiezasB[i].draw();
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].draw();
    }
    for (int i = 0; i < j; i++) {
      PiezasB[i].updateb(mouseX, mouseY);
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].updaten(mouseX, mouseY);
    }
    verificar(4, cont);
    if (g==1) {
      image(bh2, -10, 0, width, height);
      b[6].setCol(#42E34E);
      if (keyPressed ) {
        if (key=='m'||key=='M') {
          bot7=false;
          bot1=true;
          inicio=true;
          g=0;
        }
      }
    }
  }
  if (bot8 == true) {
    n=5;
    background(0);
    Tablero();
    for (int i = 0; i < j; i++) {
      PiezasB[i].draw();
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].draw();
    }
    for (int i = 0; i < j; i++) {
      PiezasB[i].updateb(mouseX, mouseY);
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].updaten(mouseX, mouseY);
    }
    verificar(5, cont);
    if (g==1) {
      image(bh2, -10, 0, width, height);
      b[7].setCol(#42E34E);
      if (keyPressed ) {
        if (key=='m'||key=='M') {
          bot8=false;
          bot1=true;
          inicio=true;
          g=0;
        }
      }
    }
  }
  if (bot9 == true) {
    n=6;
    background(0);
    Tablero();
    for (int i = 0; i < j; i++) {
      PiezasB[i].draw();
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].draw();
    }
    for (int i = 0; i < j; i++) {
      PiezasB[i].updateb(mouseX, mouseY);
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].updaten(mouseX, mouseY);
    }
    verificar(6, cont);
    if (g==1) {
      image(bh2, -10, 0, width, height);
      b[8].setCol(#42E34E);
      if (keyPressed ) {
        if (key=='m'||key=='M') {
          bot9=false;
          bot1=true;
          inicio=true;
          g=0;
        }
      }
    }
  }
  if (bot10 == true) {
    n=7;
    background(0);
    Tablero();
    for (int i = 0; i < j; i++) {
      PiezasB[i].draw();
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].draw();
    }
    for (int i = 0; i < j; i++) {
      PiezasB[i].updateb(mouseX, mouseY);
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].updaten(mouseX, mouseY);
    }
    verificar(7, cont);
    if (g==1) {
      image(bh2, -10, 0, width, height);
      b[9].setCol(#42E34E);
      if (keyPressed ) {
        if (key=='m'||key=='M') {
          bot10=false;
          bot1=true;
          inicio=true;
          g=0;
        }
      }
    }
  }

  if (bot11 == true) {
    n=8;
    background(0);
    Tablero();
    for (int i = 0; i < j; i++) {
      PiezasB[i].draw();
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].draw();
    }
    for (int i = 0; i < j; i++) {
      PiezasB[i].updateb(mouseX, mouseY);
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].updaten(mouseX, mouseY);
    }
    verificar(8, cont);
    if (g==1) {
      image(bh2, -10, 0, width, height);
      b[10].setCol(#42E34E);
      if (keyPressed ) {
        if (key=='m'||key=='M') {
          bot11=false;
          bot1=true;
          inicio=true;
          g=0;
        }
      }
    }
  }


  if (bot12 == true) {
    n=9;
    background(0);
    Tablero();
    for (int i = 0; i < j; i++) {
      PiezasB[i].draw();
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].draw();
    }
    for (int i = 0; i < j; i++) {
      PiezasB[i].updateb(mouseX, mouseY);
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].updaten(mouseX, mouseY);
    }
    verificar(9, cont);
    if (g==1) {
      image(bh2, -10, 0, width, height);
      b[11].setCol(#42E34E);
      if (keyPressed ) {
        if (key=='m'||key=='M') {
          bot12=false;
          bot1=true;
          inicio=true;
          g=0;
        }
      }
    }
  }
  if (bot13 == true) {
    n=10;
    background(0);
    Tablero();
    for (int i = 0; i < j; i++) {
      PiezasB[i].draw();
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].draw();
    }
    for (int i = 0; i < j; i++) {
      PiezasB[i].updateb(mouseX, mouseY);
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].updaten(mouseX, mouseY);
    }
    verificar(10, cont);
    if (g==1) {
      image(bh2, -10, 0, width, height);
      b[12].setCol(#42E34E);
      if (keyPressed ) {
        if (key=='m'||key=='M') {
          bot13=false;
          bot1=true;
          inicio=true;
          g=0;
        }
      }
    }
  }
  if (bot14 == true) {
    n=11;
    background(0);
    Tablero();
    for (int i = 0; i < j; i++) {
      PiezasB[i].draw();
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].draw();
    }
    for (int i = 0; i < j; i++) {
      PiezasB[i].updateb(mouseX, mouseY);
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].updaten(mouseX, mouseY);
    }
    verificar(11, cont);
    if (g==1) {
      image(bh2, -10, 0, width, height);
      b[13].setCol(#42E34E);
      if (keyPressed ) {
        if (key=='m'||key=='M') {
          bot14=false;
          bot1=true;
          inicio=true;
          g=0;
        }
      }
    }
  }
  if (bot15 == true) {
    n=12;
    background(0);
    Tablero();
    for (int i = 0; i < j; i++) {
      PiezasB[i].draw();
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].draw();
    }
    for (int i = 0; i < j; i++) {
      PiezasB[i].updateb(mouseX, mouseY);
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].updaten(mouseX, mouseY);
    }
    verificar(12, cont);
    if (g==1) {
      image(bh2, -10, 0, width, height);
      b[14].setCol(#42E34E);
      if (keyPressed ) {
        if (key=='m'||key=='M') {
          bot15=false;
          bot1=true;
          inicio=true;
          g=0;
        }
      }
    }
  }
  if (bot16 == true) {
    n=13;
    background(0);
    Tablero();
    for (int i = 0; i < j; i++) {
      PiezasB[i].draw();
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].draw();
    }
    for (int i = 0; i < j; i++) {
      PiezasB[i].updateb(mouseX, mouseY);
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].updaten(mouseX, mouseY);
    }
    verificar(13, cont);
    if (g==1) {
      image(bh2, -10, 0, width, height);
      b[15].setCol(#42E34E);
      if (keyPressed ) {
        if (key=='m'||key=='M') {
          bot16=false;
          bot1=true;
          inicio=true;
          g=0;
        }
      }
    }
  }
  if (bot17 == true) {
    n=14;
    background(0);
    Tablero();
    for (int i = 0; i < j; i++) {
      PiezasB[i].draw();
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].draw();
    }
    for (int i = 0; i < j; i++) {
      PiezasB[i].updateb(mouseX, mouseY);
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].updaten(mouseX, mouseY);
    }
    verificar(14, cont);
    if (g==1) {
      image(bh2, -10, 0, width, height);
      b[16].setCol(#42E34E);
      if (keyPressed ) {
        if (key=='m'||key=='M') {
          bot17=false;
          bot1=true;
          inicio=true;
          g=0;
        }
      }
    }
  }
  if (bot18 == true) {
    n=15;
    background(0);
    Tablero();
    for (int i = 0; i < j; i++) {
      PiezasB[i].draw();
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].draw();
    }
    for (int i = 0; i < j; i++) {
      PiezasB[i].updateb(mouseX, mouseY);
    }
    for (int i = 0; i < k; i++) {
      PiezasN[i].updaten(mouseX, mouseY);
    }
    verificar(15, cont);
    if (g==1) {
      image(bh2, -10, 0, width, height);
      b[17].setCol(#42E34E);
      if (keyPressed ) {
        if (key=='m'||key=='M') {
          bot18=false;
          bot1=true;
          inicio=true;
          g=0;
        }
      }
    }
  }
}



void mousePressed() {    

  //recorre el arreglo para que en clickb y clickn se mire si esta encima y ha presionado
  if (Turno == true) {
    for (int i = 0; i < j; i++) { 
      PiezasB[i].clickb(mouseX, mouseY);
    }
  } else if (Turno == false) {
    for (int i = 0; i < k; i++) {
      PiezasN[i].clickn(mouseX, mouseY);
    }
  }

  // Pone el estado de seleccion del boton en verdadero si se selecciono y el resto en falso y ademas pone inicio en falso
  if ( mouseButton == LEFT && inicio == true ) {

    if (b[0].col() == color(255, 102, 102)) {
      bot1 = true;
      bot2 = false;
      bot3 = false;
      bot4 = false;
      bot5 = false;
      bot6 = false;
      bot7 = false;
      bot8 = false;
      bot9 = false;
      bot10 = false;
      bot11 = false;
      bot12 = false;
      bot13 = false;
      bot14 = false;
      bot15 = false;
      bot16 = false;
      bot17 = false;
      bot18 = false;
      //inicio = false;
    }

    if (b[1].col() == color(255, 102, 102)) {
      n=17;
      bot1 = false;
      bot2 = true;
      bot3 = false;
      bot4 = false;
      bot5 = false;
      bot6 = false;
      bot7 = false;
      bot8 = false;
      bot9 = false;
      bot10 = false;
      bot11 = false;
      bot12 = false;
      bot13 = false;
      bot14 = false;
      bot15 = false;
      bot16 = false;
      bot17 = false;
      bot18 = false;
      problemas(n);
      inicio = false;
    }

    if (b[2].col() == color(255, 102, 102)) {
      bot1 = false;
      bot2 = false;
      bot3 = true;
      bot4 = false;
      bot5 = false;
      bot6 = false;
      bot7 = false;
      bot8 = false;
      bot9 = false;
      bot10 = false;
      bot11 = false;
      bot12 = false;
      bot13 = false;
      bot14 = false;
      bot15 = false;
      bot16 = false;
      bot17 = false;
      bot18 = false;
      inicio = false;
    }
    if (b[3].col() == color(255, 102, 102)) {
      n=1;
      bot1 = false;
      bot2 = false;
      bot3 = false;
      bot4 = true;
      bot5 = false;
      bot6 = false;
      bot7 = false;
      bot8 = false;
      bot9 = false;
      bot10 = false;
      bot11 = false;
      bot12 = false;
      bot13 = false;
      bot14 = false;
      bot15 = false;
      bot16 = false;
      bot17 = false;
      bot18 = false;
      problemas(n);
      inicio = false;
    }
    if (b[4].col() == color(255, 102, 102)) {
      n=2;
      bot1 = false;
      bot2 = false;
      bot3 = false;
      bot4 = false;
      bot5 = true;
      bot6 = false;
      bot7 = false;
      bot8 = false;
      bot9 = false;
      bot10 = false;
      bot11 = false;
      bot12 = false;
      bot13 = false;
      bot14 = false;
      bot15 = false;
      bot16 = false;
      bot17 = false;
      bot18 = false;
      problemas(n);
      inicio = false;
    }
    if (b[5].col() == color(255, 102, 102)) {
      n=3;
      bot1 = false;
      bot2 = false;
      bot3 = false;
      bot4 = false;
      bot5 = false;
      bot6 = true;
      bot7 = false;
      bot8 = false;
      bot9 = false;
      bot10 = false;
      bot11 = false;
      bot12 = false;
      bot13 = false;
      bot14 = false;
      bot15 = false;
      bot16 = false;
      bot17 = false;
      bot18 = false;
      problemas(n);
      inicio = false;
    }
    if (b[6].col() == color(255, 102, 102)) {
      n=4;
      bot1 = false;
      bot2 = false;
      bot3 = false;
      bot4 = false;
      bot5 = false;
      bot6 = false;
      bot7 = true;
      bot8 = false;
      bot9 = false;
      bot10 = false;
      bot11 = false;
      bot12 = false;
      bot13 = false;
      bot14 = false;
      bot15 = false;
      bot16 = false;
      bot17 = false;
      bot18 = false;
      problemas(n);
      inicio = false;
    }
    if (b[7].col() == color(255, 102, 102)) {
      n=5;
      bot1 = false;
      bot2 = false;
      bot3 = false;
      bot4 = false;
      bot5 = false;
      bot6 = false;
      bot7 = false;
      bot8 = true;
      bot9 = false;
      bot10 = false;
      bot11 = false;
      bot12 = false;
      bot13 = false;
      bot14 = false;
      bot15 = false;
      bot16 = false;
      bot17 = false;
      bot18 = false;
      problemas(n);
      inicio = false;
    }
    if (b[8].col() == color(255, 102, 102)) {
      n=6;
      bot1 = false;
      bot2 = false;
      bot3 = false;
      bot4 = false;
      bot5 = false;
      bot6 = false;
      bot7 = false;
      bot8 = false;
      bot9 = true;
      bot10 = false;
      bot11 = false;
      bot12 = false;
      bot13 = false;
      bot14 = false;
      bot15 = false;
      bot16 = false;
      bot17 = false;
      bot18 = false;
      problemas(n);
      inicio = false;
    }
    if (b[9].col() == color(255, 102, 102)) {
      n=7;
      bot1 = false;
      bot2 = false;
      bot3 = false;
      bot4 = false;
      bot5 = false;
      bot6 = false;
      bot7 = false;
      bot8 = false;
      bot9 = false;
      bot10 = true;
      bot11 = false;
      bot12 = false;
      bot13 = false;
      bot14 = false;
      bot15 = false;
      bot16 = false;
      bot17 = false;
      bot18 = false;
      problemas(n);
      inicio = false;
    }
    if (b[10].col() == color(255, 102, 102)) {
      n=8;
      bot1 = false;
      bot2 = false;
      bot3 = false;
      bot4 = false;
      bot5 = false;
      bot6 = false;
      bot7 = false;
      bot8 = false;
      bot9 = false;
      bot10 = false;
      bot11 = true;
      bot12 = false;
      bot13 = false;
      bot14 = false;
      bot15 = false;
      bot16 = false;
      bot17 = false;
      bot18 = false;
      problemas(n);
      inicio = false;
    }
    if (b[11].col() == color(255, 102, 102)) {
      n=9;
      bot1 = false;
      bot2 = false;
      bot3 = false;
      bot4 = false;
      bot5 = false;
      bot6 = false;
      bot7 = false;
      bot8 = false;
      bot9 = false;
      bot10 = false;
      bot11 = false;
      bot12 = true;
      bot13 = false;
      bot14 = false;
      bot15 = false;
      bot16 = false;
      bot17 = false;
      bot18 = false;
      problemas(n);
      inicio = false;
    }
    if (b[12].col() == color(255, 102, 102)) {
      n=10;
      bot1 = false;
      bot2 = false;
      bot3 = false;
      bot4 = false;
      bot5 = false;
      bot6 = false;
      bot7 = false;
      bot8 = false;
      bot9 = false;
      bot10 = false;
      bot11 = false;
      bot12 = false;
      bot13 = true;
      bot14 = false;
      bot15 = false;
      bot16 = false;
      bot17 = false;
      bot18 = false;
      problemas(n);
      inicio = false;
    }
    if (b[13].col() == color(255, 102, 102)) {
      n=11;
      bot1 = false;
      bot2 = false;
      bot3 = false;
      bot4 = false;
      bot5 = false;
      bot6 = false;
      bot7 = false;
      bot8 = false;
      bot9 = false;
      bot10 = false;
      bot11 = false;
      bot12 = false;
      bot13 = false;
      bot14 = true;
      bot15 = false;
      bot16 = false;
      bot17 = false;
      bot18 = false;
      problemas(n);
      inicio = false;
    }
    if (b[14].col() == color(255, 102, 102)) {
      n=12;
      bot1 = false;
      bot2 = false;
      bot3 = false;
      bot4 = false;
      bot5 = false;
      bot6 = false;
      bot7 = false;
      bot8 = false;
      bot9 = false;
      bot10 = false;
      bot11 = false;
      bot12 = false;
      bot13 = false;
      bot14 = false;
      bot15 = true;
      bot16 = false;
      bot17 = false;
      bot18 = false;
      problemas(n);
      inicio = false;
    }
    if (b[15].col() == color(255, 102, 102)) {
      n=13;
      bot1 = false;
      bot2 = false;
      bot3 = false;
      bot4 = false;
      bot5 = false;
      bot6 = false;
      bot7 = false;
      bot8 = false;
      bot9 = false;
      bot10 = false;
      bot11 = false;
      bot12 = false;
      bot13 = false;
      bot14 = false;
      bot15 = false;
      bot16 = true;
      bot17 = false;
      bot18 = false;
      problemas(n);
      inicio = false;
    }
    if (b[16].col() == color(255, 102, 102)) {
      n=14;
      bot1 = false;
      bot2 = false;
      bot3 = false;
      bot4 = false;
      bot5 = false;
      bot6 = false;
      bot7 = false;
      bot8 = false;
      bot9 = false;
      bot10 = false;
      bot11 = false;
      bot12 = false;
      bot13 = false;
      bot14 = false;
      bot15 = false;
      bot16 = false;
      bot17 = true;
      bot18 = false;
      problemas(n);
      inicio = false;
    }
    if (b[17].col() == color(255, 102, 102)) {
      n=15;
      bot1 = false;
      bot2 = false;
      bot3 = false;
      bot4 = false;
      bot5 = false;
      bot6 = false;
      bot7 = false;
      bot8 = false;
      bot9 = false;
      bot10 = false;
      bot11 = false;
      bot12 = false;
      bot13 = false;
      bot14 = false;
      bot15 = false;
      bot16 = false;
      bot17 = false;
      bot18 = true;
      problemas(n);
      inicio = false;
    }
  }
}


void keyPressed() {

  // Cambia el problema al presionar una tecla y al estar seleccionado el boton 1 de Juego problemas


  if (key == 'r' || key == 'R') {
    println("reinicio");
    problemas(n);
  }
}

void mouseMoved() {

  // Cambia el color de los botones siempre que el mouse este encima del boton
  for (int i = 0; i < 18; i++) {
    if (dist(mouseX, mouseY, b[i].trans.x + b[i].gn.x /2, b[i].trans.y + b[i].gn.y /2) < width/25) {
      b[i].setCol(color(255, 102, 102));
    } else {
      b[i].setCol(color(0, 128, 255));
    }
  }
}

void Tablero() {
  //tamaño de casillero
  int ladoDeCuadro = height/8;
  int puntoinicio = a;

  //recorro la coordenada de Y para dibujar los cuadros
  for (int c = 0; c < columna; c++) { 
    for (int i = 0; i < fila; i++) {
      //dibujo el casillero
      rect( i * ladoDeCuadro + puntoinicio, c * ladoDeCuadro, ladoDeCuadro, ladoDeCuadro ); 

      //Pinto de negro los casilleros pares
      if ( (i+c) % 2 == 0 ) {
        fill(0, 102, 204);
        //pinto azarosamente de distintos colores el resto de los casilleros
      } else {
        fill( 185, 220, 255);
      }
      rect( i * ladoDeCuadro + puntoinicio, c * ladoDeCuadro, ladoDeCuadro, ladoDeCuadro );
    }
  }
}