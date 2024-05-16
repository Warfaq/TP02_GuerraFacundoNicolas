class Dado{
private  float valorDado;
private  color colorDado = #EA8A13;
private  PVector Posicion;
private  int ladoDado = 150;
  
//CONTRUCTOR
Dado(){
    valorDado = 6;
    Posicion = new PVector(width/2, height/2); // Inicializamos la posición
}

public void dibujarDado(){ //LIENZO DEL DADO
    rectMode(CENTER);
    fill(colorDado);
    rect(Posicion.x, Posicion.y , ladoDado, ladoDado); 
  }

private void dibujarPunto( float x, float y) { // Método para dibujar punto y modificar su posicion
      int r=20;
      fill(0);
      circle(x,y,r);
  }

private void dibujarValor(){// Dibujar puntos dependiendo del valor del dado  
  if (valorDado % 2 != 0) { // Si el valor del dado es impar, dibujamos un punto en el centro
      dibujarPunto(Posicion.x, Posicion.y);
  }
  
  if (valorDado >= 2) { // Si el valor del dado es 2 o más, dibujamos los puntos en las esquinas
     dibujarPunto(Posicion.x - ladoDado / 3, Posicion.y - ladoDado / 3); // Esquina superior izquierda
     dibujarPunto(Posicion.x + ladoDado / 3, Posicion.y + ladoDado / 3); // Esquina inferior derecha
  }
  
  if (valorDado >= 4) { // Si el valor del dado es 4 o más, dibujamos los puntos en las otras dos esquinas
      dibujarPunto(Posicion.x - ladoDado / 3, Posicion.y + ladoDado / 3);
      dibujarPunto(Posicion.x + ladoDado / 3, Posicion.y - ladoDado / 3);
  }
  if (valorDado == 6) { // Si el valor del dado es 6, dibujamos los puntos en el medio de los lados
      dibujarPunto(Posicion.x - ladoDado /3, Posicion.y);
      dibujarPunto(Posicion.x + ladoDado / 3, Posicion.y);
  }
 }
}
