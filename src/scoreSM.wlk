import wollok.game.*

//FUMADA NICO BRAVO.............................................................................................
object score {
	var property puntaje = 0
	var property multiplicador = 1
	var property cantTeclasPulsadas = 0
	
	method sumarPuntaje(valor){
		puntaje += valor * multiplicador
	}
	
	method racha(){
		if ((cantTeclasPulsadas % 10)== 0 )
		multiplicador = 4.min(multiplicador + 1)
	}
	
	method sumarLetrasCorrectasPulsadas() {
		cantTeclasPulsadas += 1
	}
	
	method resetMultiplicador(){
		multiplicador = 1
		cantTeclasPulsadas = 0
	}
	
	method aparecer(){
		game.addVisual(unidad)
		game.addVisual(decena)
		game.addVisual(centena)
		game.addVisual(mil)
		game.addVisual(diezMil)
		game.addVisual(cienMil)
		game.addVisual(indicadorMultiplicador)
	}
	
	method obtenerPuntos(){
		unidad.obtenerNumero(puntaje)
		decena.obtenerNumero(puntaje)
		centena.obtenerNumero(puntaje)
		mil.obtenerNumero(puntaje)
		diezMil.obtenerNumero(puntaje)
		cienMil.obtenerNumero(puntaje)
	}	
	
}

class Numero{

    method image() 

    method obtenerNumero(valor)
    
}

object indicadorMultiplicador inherits Numero {
	var property position = game.at(10, 10) 
	method obtenerImagen() {
		return score.multiplicador() * 111
	}
	
    override method image() = self.obtenerImagen().toString() + ".png"
    
     override method obtenerNumero(valor){}

    }


object unidad inherits Numero {
	var property position = game.at(120, 900) 
	var unidad = 0 
	
    override method image() = unidad.toString() + ".png"

    override method obtenerNumero(valor){
        unidad = (valor % 10 / 1).truncate(0)
    }
    
}

object decena inherits Numero{
	var property position = game.at(100, 900) 
	var decena = 0
	
    override method image() = decena.toString() + ".png"

    override method obtenerNumero(valor){//FUMADA MARCE VALDEZZZZZZZZZZZZZZZZZZZ
        decena = (valor % 100 / 10).truncate(0)
    }

}

object centena inherits Numero {
	var property position = game.at(80, 900) 
	var centena = 0
	
    override method image() = centena.toString() + ".png"

    override method obtenerNumero(valor){//FUMADA MARCE VALDEZZZZZZZZZZZZZZZZZZZ
        centena = (valor % 1000 / 100).truncate(0)
    }
    
}

object mil inherits Numero {
	var property position = game.at(60, 900) 
	var centena = 0
	
    override method image() = centena.toString() + ".png"

    override method obtenerNumero(valor){//FUMADA MARCE VALDEZZZZZZZZZZZZZZZZZZZ
        centena = (valor % 10000 / 1000).truncate(0)
    }
    
}

object diezMil inherits Numero {
	var property position = game.at(40, 900) 
	var centena = 0
	
    override method image() = centena.toString() + ".png"

    override method obtenerNumero(valor){//FUMADA MARCE VALDEZZZZZZZZZZZZZZZZZZZ
        centena = (valor % 100000 / 10000).truncate(0)
    }
    
}

object cienMil inherits Numero {
	var property position = game.at(20, 900) 
	var centena = 0
	
    override method image() = centena.toString() + ".png"

    override method obtenerNumero(valor){//FUMADA MARCE VALDEZZZZZZZZZZZZZZZZZZZ
        centena = (valor % 1000000 / 100000).truncate(0)
    }
    
}

object scoreImg {
	// definimos los atributos para imagen y posición de nuestro elemento
	const image = "score.png"
	const position = game.at(18, 950)
	
	method image() = image
	method position() = position
	
}





















