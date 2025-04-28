import wollok.game.*


object fondo{
	var image = "fondoInicio1.png"
	const position = game.at(0,0)
	const property imagenes = ["fondoInicio1.png" ,"fondoInicio2.png", "fondoInicio3.png"]
	var numeroDeImagen = 0
	
	
	method image(nuevaImagen) { image = nuevaImagen }
	method image() = image
	
	method position() = position
	
	method iterarImagenes(){
		numeroDeImagen = (numeroDeImagen + 1) % 3
		self.image(imagenes.get(numeroDeImagen))
	}
	
}

object instruccione{
	const image = "instrucciones.png"
	const position = game.at(0,0)

	method image() = image
	
	method position() = position
	
	
}

object instrucciones{
	const image = "instruccionesSurvivalMode.png"
	const position = game.at(0,0)

	method image() = image
	
	method position() = position
	
	
}

class InstruccionImage{
	const property image = "instrucciones.png"
	
	const position = game.at(0,0)

	method image() = image
	
	method position() = position
}