object pepita {
	var energia = 100

	method estaCansada() {
		return energia < 50
	}
	method energia(){
		return energia
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method estaFeliz(){
		return energia.between(500,1000)
	}
	
	method cuantoQuiereVolar(){
		var kms = energia/5
		if(energia.between(300,400)) {kms+=10}
		if(energia%20 == 0) {kms+=15}
		return kms
	}
	
	method salirAComer(){
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
	
	
	method haceLoQueQuieras(){
		if(self.estaCansada()) {self.come(alpiste)}
		if(self.estaFeliz()) {self.vola(8)}
	}
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() = 50
	}	


object mijo {
	var estaMojado = false
	method mojarse() {estaMojado = true}
	method secarse() {estaMojado = false}
	
	method energiaQueOtorga() { 
		return if(estaMojado) 15 
		else 20
	}
}


object canelo {
	var energia = 20
	method ponerSalsa() {energia += 5}
	method ponerQueso() {energia += 7}
	method sacarSalsa() {energia -= 5}
	method sacarQueso() {energia -= 7}
}

object canelones{
	var tieneSalsa = false
	var tieneQueso = false
	var energia = 20
	
	
	method ponerSalsa() {
		tieneSalsa = true
		energia += 5
	}
	method sacarSalsa() {
		tieneSalsa = false
		energia -=5
	}
	method ponerQueso() {
		tieneQueso = true
		energia +=7
	}
	method sacarQueso() {
		tieneQueso = false
		energia -=7
	}
	
	method energiaQueOtorga()  { return energia }
	
}

object roque{
	method entrenar(ave){
		ave.vola(10)
		ave.come(alpiste)
		ave.vola(5)
		ave.haceLoQueQuieras()
	}
}
