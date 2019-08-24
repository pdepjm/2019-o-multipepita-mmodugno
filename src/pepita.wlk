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
	method energiaQueOtorga() { 
		return 50
	}	
}

object mijo {
	var energia = 20 //Si no se moja, esta seco
	method mojarse() {energia = 15}
	method secarse() {energia = 20}
	method energiaQueOtorga() { return energia}
}


object canelones {
	var energia = 20
	method ponerSalsa() {energia += 5}
	method ponerQueso() {energia += 7}
	method sacarSalsa() {energia -= 5}
	method sacarQueso() {energia -= 7}
}


object roque{
	method entrenar(ave){
		ave.vola(10)
		ave.come(alpiste)
		ave.vola(5)
		ave.haceLoQueQuieras()
	}
}
