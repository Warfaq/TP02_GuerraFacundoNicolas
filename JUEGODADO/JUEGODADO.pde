private Dado dado;
void setup(){
  size(600,400);
  dado= new Dado();
}
void draw(){
  background(10);
dado.dibujardado();
dado.DibujarValor();
}
