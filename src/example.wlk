
object lobo {
	var peso = 10;
	
	//Requerimientos básicos
	method estaSaludable(){
		//Indica si el lobo está saludable si su peso está entre 20 y 150
		return peso.between(20,150);
	}
	method disminuirPeso(unidades){
		//Disminuye el peso del lobo segun las *unidades* recibidas.
		peso -= unidades;
	}
	method sufrirCrisis(){
		//Hace que el lobo vuelva a su peso inicial.(10)
		peso = 10;
	}
	//Caperucita Roja
	method aumentarPeso(unidades){
		//Aumenta el peso del lobo segun las *unidades* recibidas
		peso += unidades;
	}
	method comer(pesoIngerido){
		//El lobo aumenta de peso un 10% del peso ingerido.
		self.aumentarPeso(pesoIngerido * 0.1);
	}
	method correr(){
		//El lobo corre hacia algun lugar y disminuye en 1 su peso.
		self.disminuirPeso(1);
	}
	// Los 3 chanchitos
	method soplarCasa(casa){
		//Recibe un objeto Casa
		peso = (peso - casa.resistencia()).max(0)
	}
}
object caperucita {
	var peso = 60 + pesoCanasta;
	var pesoCanasta = 6*manzana.peso();
	method peso(){
		return peso;
	}
	method aumentarPesoCanasta(manzanas){
		pesoCanasta += manzana.peso() * manzanas;
		peso = 60 + pesoCanasta;
	}
	method disminuirPesoCanasta(manzanas){
		pesoCanasta = (pesoCanasta - manzana.peso() * manzanas).max(0);
		peso = 60 + pesoCanasta;
	}
}
object manzana{
	const peso = 0.20;
	method peso(){
		return peso;
	}
}
object abuelita {
	const peso = 50;
	method peso(){
		return peso;
	}
}
object cazador{
	const peso = 70;
	method peso(){
		return peso;
	}
}

object casaPaja{
	const resistencia = 0;
	method resistencia(){
		return resistencia;
	}
}
object casaMadera{
	const resistencia = 5;
	method resistencia(){
		return resistencia;
	}
}
object casaLadrillos{
	var resistencia = 0 + cantidadDeLadrillos*2;
	var cantidadDeLadrillos;
	method cantidadDeLadrillos(cantidad){
		cantidadDeLadrillos = cantidad
	}
	
	method resistencia(){
		return resistencia;
	}
}
