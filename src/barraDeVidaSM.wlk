import wollok.game.*
import scoreSM.*
import nave.*
import sonidoTipeo.*
import listaNivelSM.*
import configSM.*
import fondo.*

object gameOver {
    const position = game.at(0,0)
    var property image = "gameOver.png"

    method position() = position
     
    method perderAutomaticamente(){
    	if(lista2.algunaColisiona()){
    		game.clear()
            game.addVisual(self)
            rocola.sonidoFondo().stop()
            rocola.sonidoGameOver().play()
            game.onTick(1000, "animate",{
				self.image("gameOver_animation.png")
				game.schedule(500,{
				self.image("gameOver.png")
				})
			})	
		}
		game.schedule(3000, {
			game.stop()
		})
	}
}








