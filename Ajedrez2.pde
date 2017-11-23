PImage img;
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
PImage jm;
PImage mal;
boolean Turno=true;
int fila =8;
int columna=8;
int t=7;
int n=1;
int j, k;
int[][] Mx;
int[][] My;
Piezas[] PiezasB;
Piezas[] PiezasN;
PImage ini;
PImage [] gf=new PImage [86];
boolean jc=false;
Btom[] b = new Btom [3];
int tc;
int ttc;
int a,c;
int contador = 0;
boolean s=true;


void setup() {

  if (width-height>300) {
    a=400;
  } else {
    a=width-height;
  }
  b[0] = new Btom (width-(width/3), height-(height/3)*2.5, width/4, height/10, color(0, 128, 255), "Jugar");
  b[1] = new Btom (width-(width/3), height-(height/3)*2, width/4, height/10, color(0, 128, 255), "Modo Libre");
  b[2] = new Btom (width-(width/3), height-(height/4), width/4, height/10, color(0, 128, 255), "Instrucciones");
  ini = loadImage("a1.jpg");
  for (int i=0; i<86; i++) {
    String ii = str(i);
    String s=".gif";
    gf[i] = loadImage(ii+s);
  }
  // Ubicación
  Mx=new int[columna][fila];
  My=new int[columna][fila];
  for (int i =0; i<8; i++) {
    for (int j =0; j<8; j++) {
      Mx[i][j]=a+(height/8)*j;
      My[i][j]=(height/8)*t;
    }
    t--;
  }

  //Piezas 

  PiezasB = new Piezas[16];
  PiezasN = new Piezas[16];
  background(0);
  fullScreen();
  img = loadImage("t1.png");
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
  problemas(n);
}


void draw() {
  background(0);
  image(ini, 0, 0, width, height);
  for (Btom i : b) 
    i.pintar();
  tc=millis()/1000;
  if (tc < 86) {
    ttc=tc;
  }
  image(gf[ttc], width/15, height/8, width-width/2, height-height/5);
  if (jc == true) {
    background(0);
    image(img, a, 0, height, height);
    verificar(n, 0);
    verificar(n, 1);
    for (int i =0; i<j; i++) {
      PiezasB[i].draw();
    }
    for (int i =0; i<k; i++) {
      PiezasN[i].draw();
    }

    for (int i =0; i<j; i++) {
      PiezasB[i].updateb(mouseX, mouseY);// ejecuta la translación para cada
    }
    for (int i =0; i<k; i++) {
      PiezasN[i].updaten(mouseX, mouseY);
    }
  }
}



void mousePressed() {    

  if (Turno == true) {
    for (int i = 0; i<j; i++) { //recorre el arreglo para que en clickb se mire si esta encima y ha presionado
      PiezasB[i].clickb(mouseX, mouseY);
    }
  } else if (Turno == false) {
    for (int i =0; i<k; i++) {
      PiezasN[i].clickn(mouseX, mouseY);
    }
  }
  if ( mouseButton == LEFT ) {
    if (b[0].col()==color(255, 102, 102))
      jc=true;
  }
}


void keyPressed() {
  if (jc == true) {
    n++;
    Turno=true;
    problemas(n);
  }
}
void mouseMoved() {
  for (int i =0; i<3; i++) {
    if (dist(mouseX, mouseY, b[i].trans.x+b[i].gn.x/2, b[i].trans.y+b[i].gn.y/2)<width/25) {
      b[i].setCol(color(255, 102, 102));
    } else {
      b[i].setCol(color(0, 128, 255));
    }
  }
}