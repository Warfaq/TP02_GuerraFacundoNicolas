class Dado{
private  float valorDado;
private  color colorDado = #EA8A13;
private  PVector Posicion;
private  int ladoDado = 150;
  
//CONTRUCTOR
Dado(){
}

public void dibujardado(){ //LIENZO DEL DADO
Posicion = new PVector(width/2, height/2); // Inicializamos la posición
rectMode(CENTER);
fill(colorDado);
rect(Posicion.x, Posicion.y , ladoDado, ladoDado); 
  }
private void DibujarPunto(){ //Punto del dado
  int r = 20;
  fill(0);
  circle(Posicion.x, Posicion.y, r);
}

private void DibujarValor(){// Dibujar puntos dependiendo del valor del dado  
   valorDado = 1;
   DibujarPunto();
}
}
