int fila =8;
int columna=8;
PImage im;
int t=7;
im=loadImage("t1.png");
int[][] Mx=new int[columna][fila];
int[][] My=new int[columna][fila];
fullScreen();
for (int i =0; i<8;i++){
  for(int j =0; j<8; j++){
     Mx[i][j]=width/2-height/2+(height/8)*j;
     My[i][j]=(height/8)*t;
  }
  t--;
}
image(im,width/2-height/2, 0, height, height);
for (int i =0; i<8;i++){
  for(int j =0; j<8; j++){
     println(Mx[i][j],My[i][j]);
     ellipse(Mx[i][j],My[i][j],10,10);
  }
}
