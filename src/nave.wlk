import wollok.game.*
import score.*
import barraDeVida.*


object nave {
	// definimos los atributos para imagen y posición de nuestro personaje
	var property image = "lineaLimite.png"
	var position = game.at(0, 0)
	
	
	method restart(){
		image = "lineaLimite.png"
	}
	method position() = position
	method position(nuevaPosicion) { position = nuevaPosicion }	
	method tipeo(){
		self.image("lineaLimite2.png")
		game.schedule(110,{
			self.image("lineaLimite.png")
		})
	}
	method error(){
		self.image("lineaLimite3.png")
		game.schedule(110,{
			self.image("lineaLimite.png")
		})
		barraDeVida.perderUnaBarra()
		score.resetMultiplicador()
		barraDeVida.perdiste()
	}
}
