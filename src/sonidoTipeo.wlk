import wollok.game.*
import config1.*

//SONIDOS INICIOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
const sonidoInicio1 = new Sound(file ="gameInicio.mp3")
const sonidoInicio2 = new Sound(file ="gameInicio.mp3")
const sonidoInicio3 = new Sound(file ="gameInicio.mp3")

//SONIDOS FONDOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
const sonidoFondo1 = new Sound(file = "gameJuego.wav")
const sonidoFondo2 = new Sound(file = "gameJuego.wav")
const sonidoFondo3 = new Sound(file = "gameJuego.wav")

//SONIDOS GAMEEEEEEEEE OVVVVVVVERRRRRRRRRRRRRRRRRRRRRR
const sonidoGameOver1 = new Sound(file = "gameOver.mp3")
const sonidoGameOver2 = new Sound(file = "gameOver.mp3")
const sonidoGameOver3 = new Sound(file = "gameOver.mp3")

/*object sonidoTipeo {
	var property sonido
	
  	method play() {
  		const nuevoSonido = new Sound(file = "sonidoTipeo.mp3")
  		self.sonido(nuevoSonido)
    // Crea una nueva instancia de Sound antes de reproducirlo
    	nuevoSonido.volume(0.2)
    	nuevoSonido.play()
  }
}
*/

object rocola{

	const property sonidosInicio = [sonidoInicio1, sonidoInicio2, sonidoInicio3]
	const property sonidosFondo = [sonidoFondo1, sonidoFondo2, sonidoFondo3]
	const property sonidosGameOver = [sonidoGameOver1, sonidoGameOver2, sonidoGameOver3]
	
	
	var property sonidoInicio  = sonidoInicio1
	var property sonidoFondo = sonidoFondo1
	var property sonidoGameOver = sonidoGameOver1
	
	
	method change(){
		sonidoInicio = sonidosInicio.get(modo.intentosHastaElMomento())
		sonidoFondo = sonidosFondo.get(modo.intentosHastaElMomento())
		sonidoGameOver = sonidosGameOver.get(modo.intentosHastaElMomento())
	}
}







