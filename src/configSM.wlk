import wollok.game.*
import nave.*
import letraSM.*
import palabrasSM.*
import input.*
import sonidoTipeo.*
import listaNivelSM.*
import palabraFijadaSM.*
import fondo.*
import scoreSM.*
import barraDeVidaSM.*


// configuracion de juevo de modo tipeo por vidas limitadas

object modo2{
	method iniciarSurvivalMode(){
			
		//Iniciar lluvia de palabras
	    self.mapeoDeLetras()
		rocola.sonidoInicio().pause()
		rocola.sonidoFondo().play()
		rocola.sonidoFondo().shouldLoop(true)
	    game.addVisual(nave)
	    game.addVisual(scoreImg)  
	    score.aparecer()
	    game.removeVisual(fondo)
	    lista2.aparecerPalabras()
	    lista2.lloverPalabras()
		lista2.llegarAlHorizonte()
	
	}
	
	method mapeoDeLetras(){
		//mapeo de todas las letras
		keyboard.a().onPressDo({
			input.mapear("a")
		//	sonidoTipeo.play()
			nave.tipeo()
			lista2.borrarSiCorresponde() // Ahora si.!... "EL CORAZON DEL GAME"
		})
		keyboard.b().onPressDo({
	        input.mapear("b")
	    //    sonidoTipeo.play()
	        nave.tipeo()
	        lista2.borrarSiCorresponde()
	    })
	    keyboard.c().onPressDo({
	        input.mapear("c")
	    //    sonidoTipeo.play()
	        nave.tipeo()
	        lista2.borrarSiCorresponde()
	    })
	    keyboard.d().onPressDo({
	        input.mapear("d")
	    //    sonidoTipeo.play()
	        nave.tipeo()
	        lista2.borrarSiCorresponde()
	    })
	    keyboard.e().onPressDo({
	        input.mapear("e")
	    //    sonidoTipeo.play()
	        nave.tipeo()
	        lista2.borrarSiCorresponde()
	    })
	    keyboard.f().onPressDo({
	        input.mapear("f")
	    //    sonidoTipeo.play()
	        nave.tipeo()
	        lista2.borrarSiCorresponde()
	    })
	    keyboard.g().onPressDo({
	        input.mapear("g")
	    //    sonidoTipeo.play()
	        nave.tipeo()
	        lista2.borrarSiCorresponde()
	    })
	    keyboard.h().onPressDo({
	        input.mapear("h")
	    //    sonidoTipeo.play()
	        nave.tipeo()
	        lista2.borrarSiCorresponde()
	    })
	    keyboard.i().onPressDo({
	        input.mapear("i")
	    //    sonidoTipeo.play()
	        nave.tipeo()
	        lista2.borrarSiCorresponde()
	    })
	    keyboard.j().onPressDo({
	        input.mapear("j")
	    //    sonidoTipeo.play()
	        nave.tipeo()
	        lista2.borrarSiCorresponde()
	    })
	    keyboard.k().onPressDo({
	        input.mapear("k")
	    //    sonidoTipeo.play()
	        nave.tipeo()
	        lista2.borrarSiCorresponde()
	    })
	    keyboard.l().onPressDo({
	        input.mapear("l")
	    //    sonidoTipeo.play()
	        nave.tipeo()
	        lista2.borrarSiCorresponde()
	    })
	    keyboard.m().onPressDo({
	        input.mapear("m")
	    //    sonidoTipeo.play()
	        nave.tipeo()
	        lista2.borrarSiCorresponde()
	    })
	    keyboard.n().onPressDo({
	        input.mapear("n")
	    //    sonidoTipeo.play()
	        nave.tipeo()
	        lista2.borrarSiCorresponde()
	    })
	    keyboard.o().onPressDo({
	        input.mapear("o")
	    //    sonidoTipeo.play()
	        nave.tipeo()
	        lista2.borrarSiCorresponde()
	    })
	    keyboard.p().onPressDo({
	        input.mapear("p")
	    //    sonidoTipeo.play()
	        nave.tipeo()
	        lista2.borrarSiCorresponde()
	    })
	    keyboard.q().onPressDo({
	        input.mapear("q")
	    //    sonidoTipeo.play()
	        nave.tipeo()
	        lista2.borrarSiCorresponde()
	    })
	    keyboard.r().onPressDo({
	        input.mapear("r")
	    //    sonidoTipeo.play()
	        nave.tipeo()
	        lista2.borrarSiCorresponde()
	    })
	    keyboard.s().onPressDo({
	        input.mapear("s")
	    //    sonidoTipeo.play()
	        nave.tipeo()
	        lista2.borrarSiCorresponde()
	    })
	    keyboard.t().onPressDo({
	        input.mapear("t")
	    //    sonidoTipeo.play()
	        nave.tipeo()
	        lista2.borrarSiCorresponde()
	    })
	    keyboard.u().onPressDo({
	        input.mapear("u")
	    //    sonidoTipeo.play()
	        nave.tipeo()
	        lista2.borrarSiCorresponde()
	    })
	    keyboard.v().onPressDo({
	        input.mapear("v")
	    //    sonidoTipeo.play()
	        nave.tipeo()
	        lista2.borrarSiCorresponde()
	    })
	    keyboard.w().onPressDo({
	        input.mapear("w")
	    //    sonidoTipeo.play()
	        nave.tipeo()
	        lista2.borrarSiCorresponde()
	    })
	    keyboard.x().onPressDo({
	        input.mapear("x")
	    //    sonidoTipeo.play()
	        nave.tipeo()
	        lista2.borrarSiCorresponde()
	    })
	    keyboard.y().onPressDo({
	        input.mapear("y")
	    //    sonidoTipeo.play()  
	        nave.tipeo()
	        lista2.borrarSiCorresponde()
	    })
	    keyboard.z().onPressDo({
	        input.mapear("z")
	    //    sonidoTipeo.play()
	        nave.tipeo()
	        lista2.borrarSiCorresponde()
	    })
	
	}
}

object terminarSurvivalMode{
	
	method end(){
		game.clear()
		rocola.sonidoFondo().pause()
		rocola.sonidoGameOver().play()
		game.addVisual(gameOver)
		lista2.palabrasCayendo([])
		palabraFijada.vaciarPalabra()
		palabraFijada.tieneAlguna(false)
		score.puntaje(0)
		score.obtenerPuntos()
		score.resetMultiplicador()
		nave.restart()
		
		
		
		
		
	}	

}


