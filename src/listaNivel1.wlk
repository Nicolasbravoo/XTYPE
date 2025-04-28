import palabras.*
import letra.*
import diccionario.*
import wollok.game.*
import input.*
import nave.*
import palabraFijada.*
import score.*
import barraDeVida.*

object lista1 {
    var property listaPalabras = [	for, while, procedure, abstract, git,
		                           	remove, let, private, public, instanceof, 
		                            main, empty, switch, float, break, 
		                            lambda, request, raise, elif, elseif, 
		                            exception, int, default, none, foreach, 
		                            function, print, case, await, double, 
		                            interface, char, commit, type, add, 
		                            status, origin, master, pull, contains, 
		                            array, continue, clear, finally, this, 
		                            where, delete, distinct, yield, extends
		                            
                           			]
                           			
                           		                       			
    var property palabrasCayendo = []
    var property palabraElegida = null
    
    //CONTADOR DE PALABRAS TIPEADAS, CUANDO LLEGUE A 5, AUMENTA LA VELOCIDAD DE CAIDA
    var cantidadDePalabrasTipeadas = 0
		    
    method resetContador(){
    	cantidadDePalabrasTipeadas = 0
    }
    
    method algunaColisiona(){
    	return palabrasCayendo.any({p=> p.llegoAlHorizonte()})
    }
    
    method cantidadDePalabrasTipeadas() = cantidadDePalabrasTipeadas
    
    method elegirPalabra(){
        palabraElegida = listaPalabras.anyOne()
        palabrasCayendo.add(palabraElegida)
        listaPalabras.remove(palabraElegida)
        return palabraElegida
    }
	
    method aparecerPalabras(){
        const lluviaDePalabras = lluviaPalabras.frecuencia()
        game.onTick(lluviaDePalabras,"generarPalabras",{
            if(0 < listaPalabras.size()){
                self.elegirPalabra().aparecer()}
            else{
                game.removeTickEvent("generarPalabras")
                }})
    }
    
    method llegarAlHorizonte(){
    	game.onTick(300, "horizon",{
    		if(self.algunaColisiona()){
    			gameOver.perderAutomaticamente()
    		}	
		})
    }
	
	method lloverPalabras(){
		game.onTick(300, "lluvia",{
			self.palabrasCayendo().forEach({ palabra => palabra.caerConEstilo()})
		})
	}
	//MOSTRARRRRRRRRRR devuelve una coleccion de la primer letra de cada palabra viva ( las que estan cayendo en el juego)
	method primerasLetrasDePalabrasVivas(){
		return palabrasCayendo.map({palabra=> palabra.primerLetra()})
	}
	
	//MOSTRARRRRRRRRRRRRRR BOOLEANO nos dice si alguna de las palabras vivas comienza con el input que se haga...
	method hayAlgunaPalabraVivaQueComienceConElInput(){
		return self.primerasLetrasDePalabrasVivas().any({letra=> letra.coincideConInput()})
	}
	
	//MOSTRARRRRRRR devuelve la palabra viva que coincide con el INPUT!
	method palabraQueCoincideConElInput(){
		return palabrasCayendo.find({palabra=> palabra.coincideConElInput()})
	} 
	
	//MOSTRARRRR . . .
	method comprobarYFijarPalabraABorrar(){
		if(self.hayAlgunaPalabraVivaQueComienceConElInput()){
			palabraFijada.agregarPalabra(self.palabraQueCoincideConElInput()) // nuevooooo
			palabraFijada.borrarSiTieneLetras()
		}
		else{nave.error()}
	}
	
	// Metodos auxiliares para el metodo borrarSiCorresponde()
	method borrarLetrasDePalabraFijadaSiCoincideConElInput() {
		if(palabraFijada.palabra().coincideConElInput()){ 	
			palabraFijada.borrarSiTieneLetras()					
		}													
		else{
			nave.error()
		}						
	}
	
	method removerPalabraYContarSiCorresponde() {
		if(self.hayPalabraSinLetras()){							
			palabrasCayendo.remove(self.palabraSinLetras())
			cantidadDePalabrasTipeadas += 1
			velocidadDeCaida.aumentarVelocidad()
		}
	}
	
	//MOSTRAR "EL CORAZON DE LA LOGICA DEL GAME"
	method borrarSiCorresponde(){								
		if(not palabraFijada.tieneAlguna()){					
			self.comprobarYFijarPalabraABorrar()				
		}														
		else{													
			self.borrarLetrasDePalabraFijadaSiCoincideConElInput()
		}														
		self.removerPalabraYContarSiCorresponde()
		
	}
	
	//MOSTRAR Devuelve la instancia de una palabra que ya no tenga letras. (tiene que haber una instancia sin letras.) 
	method palabraSinLetras(){
		return palabrasCayendo.find({ palabra=>not palabra.tieneLetras()})
	}
	
	//MOSTRAR BOOLEANO indica si alguna de las instancias de palabras que estan cayendo  no tiene letras. 
	method hayPalabraSinLetras(){
		return palabrasCayendo.any({palabra=> not palabra.tieneLetras()})
	}
		
}

object lluviaPalabras {
	const frecuencia = 1600
	 
	
	method frecuencia() {return frecuencia}
	
	method aumentarFrecuencia(unValor) {
		const cambio = unValor
		150.max(self.frecuencia() - cambio)
		return cambio
	} 
			
}
