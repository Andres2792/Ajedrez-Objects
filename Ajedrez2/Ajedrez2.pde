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
PImage i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13;
PImage i[] = new PImage[13];
boolean Turno = true;
boolean bot1 = false;
boolean bot2 = false;
boolean bot3 = false;
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
Btom[] b = new Btom [3];
int tc;
int ttc;
int a, c, p = 0;
int contador = 0;
boolean s = true;
int cont = 0;



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
  
  // Creacion de arreglo de Instrucciones y Carga imagenes de Instrucciones
  i1 = loadImage("1.png");
  i2 = loadImage("2.png");
  i3 = loadImage("3.png");
  i4 = loadImage("4.png");
  i5 = loadImage("Rey.png");
  i6 = loadImage("Peon.png");
  i7 = loadImage("Dama.png");
  i8 = loadImage("Alfil.png");
  i9 = loadImage("Torre.png");
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
    Tablero();
    verificar(n, 0);
    verificar(n, 1);
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

  if (bot2 == true) {

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
      println("Boton1");
      inicio = false;
    }

    if (b[1].col() == color(255, 102, 102)) {
      bot1 = false;
      bot2 = true;
      bot3 = false;
      problemas(16);
      println("Boton2");
      inicio = false;
    }

    if (b[2].col() == color(255, 102, 102)) {
      bot1 = false;
      bot2 = false;
      bot3 = true;
      println("Boton3");
      inicio = false;
    }
  }
}


void keyPressed() {

  // Cambia el problema al presionar una tecla y al estar seleccionado el boton 1 de Juego problemas
  if (bot1 == true) {
    n++;
    Turno=true;
    problemas(n);
  }
}

void mouseMoved() {

  // Cambia el color de los botones siempre que el mouse este encima del boton
  for (int i = 0; i < 3; i++) {
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