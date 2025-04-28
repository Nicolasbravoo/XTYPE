import wollok.game.*
import configSM.*
import nave.*
import letra.*
import palabras.*
import input.*
import sonidoTipeo.*
import listaNivel1.*
import palabraFijada.*
import fondo.*
import score.*
import barraDeVida.*


// configuracion de juevo de modo tipeo por vidas limitadas

object modo{
	var intentosHastaElMomento = 0
	
	method intentosHastaElMomento() = intentosHastaElMomento
	
	method intentosHastaElMomento(valor){
		intentosHastaElMomento += valor
	}
	
	method configTablero(){
		game.width(700)
		game.height(1000)
		game.cellSize(1)
		
		// fondo del tablero de juego
		game.boardGround("fondo.png")
		
		//Titulo para la ventana del juego
		game.title("xType")
		
		// agregamos a nuestro objeto
		game.addVisual(fondo)
					
		//Sonido inicio
		game.schedule(110,{
			rocola.sonidoInicio().play()
			rocola.sonidoInicio().shouldLoop(true)
		})
		
		
		//Nuevo
		game.onTick(1000, "imagenes Inicio",{
			fondo.iterarImagenes()
		})
				
		keyboard.right().onPressDo({
			game.addVisual(instruccione)
				
		})	
			
		keyboard.left().onPressDo({
			game.addVisual(instrucciones)
			
		})

		keyboard.up().onPressDo({
			game.removeVisual(instrucciones)
			
		})

		keyboard.down().onPressDo({
			game.removeVisual(instruccione)
			
		})

	
		
		// Modos de juego
		game.schedule(400,{
			keyboard.enter().onPressDo({self.iniciar()})
		})
		
		game.schedule(400,{
			keyboard.shift().onPressDo({modo2.iniciarSurvivalMode()})
		})
				
	}
	
	method mapeoDeLetras(){
		//mapeo de todas las letras
		keyboard.a().onPressDo({
			input.mapear("a")
			//sonidoTipeo.play()
			nave.tipeo()
			lista1.borrarSiCorresponde() // Ahora si.!... "EL CORAZON DEL GAME"
		})
		keyboard.b().onPressDo({
	        input.mapear("b")
	        //sonidoTipeo.play()
	        nave.tipeo()
	        lista1.borrarSiCorresponde()
	    })
	    keyboard.c().onPressDo({
	        input.mapear("c")
	        //sonidoTipeo.play()
	        nave.tipeo()
	        lista1.borrarSiCorresponde()
	    })
	    keyboard.d().onPressDo({
	        input.mapear("d")
	        //sonidoTipeo.play()
	        nave.tipeo()
	        lista1.borrarSiCorresponde()
	    })
	    keyboard.e().onPressDo({
	        input.mapear("e")
	        //sonidoTipeo.play()
	        nave.tipeo()
	        lista1.borrarSiCorresponde()
	    })
	    keyboard.f().onPressDo({
	        input.mapear("f")
	        //sonidoTipeo.play()
	        nave.tipeo()
	        lista1.borrarSiCorresponde()
	    })
	    keyboard.g().onPressDo({
	        input.mapear("g")
	        //sonidoTipeo.play()
	        nave.tipeo()
	        lista1.borrarSiCorresponde()
	    })
	    keyboard.h().onPressDo({
	        input.mapear("h")
	        //sonidoTipeo.play()
	        nave.tipeo()
	        lista1.borrarSiCorresponde()
	    })
	    keyboard.i().onPressDo({
	        input.mapear("i")
	        //sonidoTipeo.play()
	        nave.tipeo()
	        lista1.borrarSiCorresponde()
	    })
	    keyboard.j().onPressDo({
	        input.mapear("j")
	        //sonidoTipeo.play()
	        nave.tipeo()
	        lista1.borrarSiCorresponde()
	    })
	    keyboard.k().onPressDo({
	        input.mapear("k")
	        //sonidoTipeo.play()
	        nave.tipeo()
	        lista1.borrarSiCorresponde()
	    })
	    keyboard.l().onPressDo({
	        input.mapear("l")
	        //sonidoTipeo.play()
	        nave.tipeo()
	        lista1.borrarSiCorresponde()
	    })
	    keyboard.m().onPressDo({
	        input.mapear("m")
	    	//sonidoTipeo.play()
	        nave.tipeo()
	        lista1.borrarSiCorresponde()
	    })
	    keyboard.n().onPressDo({
	        input.mapear("n")
	        //sonidoTipeo.play()
	        nave.tipeo()
	        lista1.borrarSiCorresponde()
	    })
	    keyboard.o().onPressDo({
	        input.mapear("o")
	        //sonidoTipeo.play()
	        nave.tipeo()
	        lista1.borrarSiCorresponde()
	    })
	    keyboard.p().onPressDo({
	        input.mapear("p")
	        //sonidoTipeo.play()
	        nave.tipeo()
	        lista1.borrarSiCorresponde()
	    })
	    keyboard.q().onPressDo({
	        input.mapear("q")
	        //sonidoTipeo.play()
	        nave.tipeo()
	        lista1.borrarSiCorresponde()
	    })
	    keyboard.r().onPressDo({
	        input.mapear("r")
	        //sonidoTipeo.play()
	        nave.tipeo()
	        lista1.borrarSiCorresponde()
	    })
	    keyboard.s().onPressDo({
	        input.mapear("s")
	        //sonidoTipeo.play()
	        nave.tipeo()
	        lista1.borrarSiCorresponde()
	    })
	    keyboard.t().onPressDo({
	        input.mapear("t")
	        //sonidoTipeo.play()
	        nave.tipeo()
	        lista1.borrarSiCorresponde()
	    })
	    keyboard.u().onPressDo({
	        input.mapear("u")
	        //sonidoTipeo.play()
	        nave.tipeo()
	        lista1.borrarSiCorresponde()
	    })
	    keyboard.v().onPressDo({
	        input.mapear("v")
	        //sonidoTipeo.play()
	        nave.tipeo()
	        lista1.borrarSiCorresponde()
	    })
	    keyboard.w().onPressDo({
	        input.mapear("w")
	        //sonidoTipeo.play()
	        nave.tipeo()
	        lista1.borrarSiCorresponde()
	    })
	    keyboard.x().onPressDo({
	        input.mapear("x")
	        //sonidoTipeo.play()
	        nave.tipeo()
	        lista1.borrarSiCorresponde()
	    })
	    keyboard.y().onPressDo({
	        input.mapear("y")
	        //sonidoTipeo.play()  
	        nave.tipeo()
	        lista1.borrarSiCorresponde()
	    })
	    keyboard.z().onPressDo({
	        input.mapear("z")
	        //sonidoTipeo.play()
	        nave.tipeo()
	        lista1.borrarSiCorresponde()
	    })
	
	}
	
	method iniciar(){
		//Iniciar lluvia de palabras	
			self.mapeoDeLetras()
			rocola.sonidoInicio().pause()
			rocola.sonidoFondo().play()
			rocola.sonidoFondo().shouldLoop(true)
			game.addVisual(nave)
			game.addVisual(scoreImg)
			game.addVisual(barraDeVida)
			score.aparecer()
			game.removeVisual(fondo)
			lista1.aparecerPalabras()
			lista1.lloverPalabras()
			lista1.llegarAlHorizonte()
	} 
	
	method reiniciar(){
		//Iniciar lluvia de palabras	
			self.mapeoDeLetras()
			rocola.sonidoFondo().play()
			rocola.sonidoFondo().shouldLoop(true)
			game.addVisual(nave)
			game.addVisual(scoreImg)
			game.addVisual(barraDeVida)
			score.aparecer()
			//game.removeVisual(fondo)
			lista1.aparecerPalabras()
			lista1.lloverPalabras()
			lista1.llegarAlHorizonte()
	}

} 


object terminar{
	
	method end(){
		game.clear()
		rocola.sonidoFondo().pause()
		rocola.sonidoGameOver().play()
		game.addVisual(gameOver)
		lista1.palabrasCayendo([])
		palabraFijada.vaciarPalabra()
		palabraFijada.tieneAlguna(false)
		score.puntaje(0)
		score.obtenerPuntos()
		score.resetMultiplicador()
		velocidadDeCaida.valor(20)
		barraDeVida.restart()
		nave.restart()
		modo.intentosHastaElMomento(1)
		if (modo.intentosHastaElMomento() > 2){
			game.stop()
		}
		keyboard.enter().onPressDo({
			rocola.sonidoGameOver().pause()
			rocola.change()
			game.removeVisual(gameOver)
			modo.configTablero()		
		})
		
	}	

}

