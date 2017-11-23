class Btom {
  PVector trans;
  PVector gn;
  color col;
  float scl=1;
  String str;
  int Z=20;
  PFont t = createFont("LetterGothicStd", width/35);
  Btom(float x, float y, float h, float w, color c, String l) {
    trans = new PVector (x, y);
    gn = new PVector (h, w);
    col=c;
    str = l;
  }

  void pintar() {
    fill(col);
    rect(trans.x, trans.y, gn.x, gn.y, Z, Z, Z, Z);
    textFont(t);
    fill(255);
    text(str, (trans.x+gn.x/2)-str.length()*width/130, (trans.y+gn.y/1.5));
  }
  public color col() {
    return col;
  }
  public void setCol(color s) {
    col=s;
  }
  public PVector trans() {
    return trans;
  }
  public PVector gn() {
    return gn;
  }
}