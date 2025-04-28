import palabrasSM.*
import letraSM.*
import diccionario.*
import wollok.game.*
import input.*
import nave.*
import palabraFijadaSM.*
import scoreSM.*
import barraDeVidaSM.*


object lista2 {
    const property listaPalabras = [for, git, let, add, int, 
                                    main, elif, none, char, type,
                                    pull, this, case, while, empty, 
                                    float, break, raise, print, array,
                                    clear, float, await, where, yield, where, 
                                    elseif, remove, public, switch, origin, 
                                    master, lambda, commit, status, delete, 
                                    double, foreach, private, extends, request, 
                                    abstract, contains, continue, distinct, exception, 
                                    instanceof, procedure, interface                                           	
                                    ]
                                    
    var property palabrasCayendo = []
    var contadorDePalabras = 0 // <--- contador de palabras en la listaPalabras    
    var property palabraElegida = null
    //CONTADOR DE PALABRAS TIPEADAS, CUANDO LLEGUE A 5, AUMENTA LA VELOCIDAD DE CAIDA
  
  	method primeraPalabra() = self.listaPalabras().first()
  	    
    method algunaColisiona(){
    	return palabrasCayendo.any({p=> p.llegoAlHorizonte()})
    }
       
    method elegirPalabra(){
        palabraElegida = listaPalabras.get(48.min(contadorDePalabras))// <--- para que no se pase del tamaño de la lista
        contadorDePalabras += 1         
        palabrasCayendo.add(palabraElegida)
        listaPalabras.remove(palabraElegida)
        return palabraElegida
    }
	
    method aparecerPalabras(){
        game.onTick(2000,"generarPalabras",{
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
		game.onTick(30, "lluvia",{
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
	
