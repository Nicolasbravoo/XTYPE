import wollok.game.*
import palabrasSM.*
import letraSM.*
import scoreSM.*

//MOSTRARRRRRRRR NUEVO OBJETO ¿para que sirve?... como setter y getter unico en todo el juego de la palabra que coincide con el input

object palabraFijada {
	var palabra = null
	var property tieneAlguna = false
	
	method vaciarPalabra() {
		palabra = null
	}
	
	method palabra() = palabra
	
	//MOSTRAR ademas de agregar una palabra tiene que settear el booleano que indica que tiene una palabra fijada
	method agregarPalabra(unaPalabra){
		palabra = unaPalabra
		tieneAlguna = true
	}
	
	
	//MOSTRARRR verifica si la palabra fijada tiene letras  y borra la pos 0,y Ademas si borras la ultima letra, settea e indica que ya no hay palabra fijada
	method borrarSiTieneLetras(){
		self.laPalabraFijadaTieneLetras()
		self.laPalabraFijadaNoTieneLetras()
	}
	
	method laPalabraFijadaTieneLetras() {
		if(palabra.tieneLetras()){
			self.borrarLetraAcertada()
			self.sumarPuntajesYRachasMultiplicadoras()		
		}
	}
	
	method laPalabraFijadaNoTieneLetras() {
		if(not palabra.tieneLetras()){
			tieneAlguna = false
		}
	}
	
	method sumarPuntajesYRachasMultiplicadoras() {
		score.sumarLetrasCorrectasPulsadas()
		score.racha()
		score.sumarPuntaje(1)
		score.obtenerPuntos()
	}
	
	method borrarLetraAcertada() {
		const explosion = new Explosion(position=palabra.primerLetra().position())
		game.addVisual(explosion)
		game.schedule(50,{
			game.removeVisual(explosion)
		})
		palabra.borrarPrimerLetra()
	}
}