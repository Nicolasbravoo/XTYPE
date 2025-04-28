import palabras.*
import letra.*
import input.*


//Lista
const for = new Palabra(letras = [new Letra(letra = "f"), new Letra(letra = "o"), new Letra(letra = "r")])

const while = new Palabra(letras = [new Letra(letra = "w"), new Letra(letra = "h"), new Letra(letra = "i"), new Letra(letra = "l"), new Letra(letra = "e")])

const procedure = new Palabra(letras = [new Letra(letra = "p"), new Letra(letra = "r"), new Letra(letra = "o"), new Letra(letra = "c"), new Letra(letra = "e"), new Letra(letra = "d"), new Letra(letra = "u"), new Letra(letra = "r"), new Letra(letra = "e")])

const abstract = new Palabra(letras = [new Letra(letra = "a"), new Letra(letra = "b"), new Letra(letra = "s"), new Letra(letra = "t"), new Letra(letra = "r"), new Letra(letra = "a"), new Letra(letra = "c"), new Letra(letra = "t")])

const git = new Palabra(letras = [new Letra(letra = "g"), new Letra(letra = "i"), new Letra(letra = "t")])

const remove = new Palabra(letras = [new Letra(letra = "r"), new Letra(letra = "e"), new Letra(letra = "m"), new Letra(letra = "o"), new Letra(letra = "v"), new Letra(letra = "e")])

const push = new Palabra(letras = [new Letra(letra = "p"), new Letra(letra = "u"), new Letra(letra = "s"), new Letra(letra = "h")])

const variable = new Palabra(letras = [new Letra(letra = "v"), new Letra(letra = "a"), new Letra(letra = "r"), new Letra(letra = "i"), new Letra(letra = "a"), new Letra(letra = "b"),new Letra(letra = "l"),new Letra(letra = "e")])

// Palabras agregadas al diccionario

const let = new Palabra(letras = [new Letra(letra = "l"), new Letra(letra = "e"), new Letra(letra = "t")])

const private = new Palabra(letras = [new Letra(letra = "p"), new Letra(letra = "r"), new Letra(letra = "i"), new Letra(letra = "v"), new Letra(letra = "a"), new Letra(letra = "t"), new Letra(letra = "e")])

const public = new Palabra(letras = [new Letra(letra = "p"), new Letra(letra = "u"), new Letra(letra = "b"), new Letra(letra = "l"), new Letra(letra = "i"), new Letra(letra = "c")])

const instanceof = new Palabra(letras = [new Letra(letra = "i"), new Letra(letra = "n"), new Letra(letra = "s"), new Letra(letra = "t"), new Letra(letra = "a"), new Letra(letra = "n"), new Letra(letra = "c"), new Letra(letra = "e"), new Letra(letra = "o"), new Letra(letra = "f")])

const main = new Palabra(letras = [new Letra(letra = "m"), new Letra(letra = "a"), new Letra(letra = "i"), new Letra(letra = "n")])

const empty = new Palabra(letras = [new Letra(letra = "e"), new Letra(letra = "m"), new Letra(letra = "p"), new Letra(letra = "t"), new Letra(letra = "y")])

// const void = new Palabra(letras = [new Letra(letra = "v"), new Letra(letra = "o"), new Letra(letra = "i"), new Letra(letra = "d")])

const switch = new Palabra(letras = [new Letra(letra = "s"), new Letra(letra = "w"), new Letra(letra = "i"), new Letra(letra = "t"), new Letra(letra = "c"), new Letra(letra = "h")])

const float = new Palabra(letras = [new Letra(letra = "f"), new Letra(letra = "l"), new Letra(letra = "o"), new Letra(letra = "a"), new Letra(letra = "t")])

const break = new Palabra(letras = [new Letra(letra = "b"), new Letra(letra = "r"), new Letra(letra = "e"), new Letra(letra = "a"), new Letra(letra = "k")])

const lambda = new Palabra(letras = [new Letra(letra = "l"), new Letra(letra = "a"), new Letra(letra = "m"), new Letra(letra = "b"), new Letra(letra = "d"), new Letra(letra = "a")])

const request = new Palabra(letras = [new Letra(letra = "r"), new Letra(letra = "e"), new Letra(letra = "q"), new Letra(letra = "u"), new Letra(letra = "e"), new Letra(letra = "s"), new Letra(letra = "t")])

const raise = new Palabra(letras = [new Letra(letra = "r"), new Letra(letra = "a"), new Letra(letra = "i"), new Letra(letra = "s"), new Letra(letra = "e")])

const elif = new Palabra(letras = [new Letra(letra = "e"), new Letra(letra = "l"), new Letra(letra = "i"), new Letra(letra = "f")])

const elseif = new Palabra(letras = [new Letra(letra = "e"), new Letra(letra = "l"), new Letra(letra = "s"), new Letra(letra = "e"), new Letra(letra = "i"), new Letra(letra = "f")])

// const assert = new Palabra(letras = [new Letra(letra = "a"), new Letra(letra = "s"), new Letra(letra = "s"), new Letra(letra = "e"), new Letra(letra = "r"), new Letra(letra = "t")])

const exception = new Palabra(letras = [new Letra(letra = "e"), new Letra(letra = "x"), new Letra(letra = "c"), new Letra(letra = "e"), new Letra(letra = "p"), new Letra(letra = "t"), new Letra(letra = "i"), new Letra(letra = "o"), new Letra(letra = "n")])

const int = new Palabra(letras = [new Letra(letra = "i"), new Letra(letra = "n"), new Letra(letra = "t")])

const default = new Palabra(letras = [new Letra(letra = "d"), new Letra(letra = "e"), new Letra(letra = "f"), new Letra(letra = "a"), new Letra(letra = "u"), new Letra(letra = "l"), new Letra(letra = "t")])

const none = new Palabra(letras = [new Letra(letra = "n"), new Letra(letra = "o"), new Letra(letra = "n"), new Letra(letra = "e")])

const foreach = new Palabra(letras = [new Letra(letra = "f"), new Letra(letra = "o"), new Letra(letra = "r"), new Letra(letra = "e"), new Letra(letra = "a"), new Letra(letra = "c"), new Letra(letra = "h")])

const function = new Palabra(letras = [new Letra(letra = "f"), new Letra(letra = "u"), new Letra(letra = "n"), new Letra(letra = "c"), new Letra(letra = "t"), new Letra(letra = "i"), new Letra(letra = "o"), new Letra(letra = "n")])

const print = new Palabra(letras = [new Letra(letra = "p"), new Letra(letra = "r"), new Letra(letra = "i"), new Letra(letra = "n"), new Letra(letra = "t")])

const case = new Palabra(letras = [new Letra(letra = "c"), new Letra(letra = "a"), new Letra(letra = "s"), new Letra(letra = "e")])

const await = new Palabra(letras = [new Letra(letra = "a"), new Letra(letra = "w"), new Letra(letra = "a"), new Letra(letra = "i"), new Letra(letra = "t")])

const double = new Palabra(letras = [new Letra(letra = "d"), new Letra(letra = "o"), new Letra(letra = "u"), new Letra(letra = "b"), new Letra(letra = "l"), new Letra(letra = "e")])

const interface = new Palabra(letras = [new Letra(letra = "i"), new Letra(letra = "n"), new Letra(letra = "t"), new Letra(letra = "e"), new Letra(letra = "r"), new Letra(letra = "f"), new Letra(letra = "a"),new Letra(letra = "c"), new Letra(letra = "e")])

const char = new Palabra(letras = [new Letra(letra = "c"), new Letra(letra = "h"), new Letra(letra = "a"), new Letra(letra = "r")])

const commit = new Palabra(letras = [new Letra(letra = "c"), new Letra(letra = "o"), new Letra(letra = "m"), new Letra(letra = "m"), new Letra(letra = "i"), new Letra(letra = "t")])

const type = new Palabra(letras = [new Letra(letra = "t"), new Letra(letra = "y"), new Letra(letra = "p"), new Letra(letra = "e")])

const add = new Palabra(letras = [new Letra(letra = "a"), new Letra(letra = "d"), new Letra(letra = "d")])

const status = new Palabra(letras = [new Letra(letra = "s"), new Letra(letra = "t"), new Letra(letra = "a"), new Letra(letra = "t"), new Letra(letra = "u"), new Letra(letra = "s")])

const origin = new Palabra(letras = [new Letra(letra = "o"), new Letra(letra = "r"), new Letra(letra = "i"), new Letra(letra = "g"), new Letra(letra = "i"), new Letra(letra = "n")])

const master = new Palabra(letras = [new Letra(letra = "m"), new Letra(letra = "a"), new Letra(letra = "s"), new Letra(letra = "t"), new Letra(letra = "e"), new Letra(letra = "r")])

const pull = new Palabra(letras = [new Letra(letra = "p"), new Letra(letra = "u"), new Letra(letra = "l"), new Letra(letra = "l")])

const contains = new Palabra(letras = [new Letra(letra = "c"), new Letra(letra = "o"), new Letra(letra = "n"), new Letra(letra = "t"), new Letra(letra = "a"), new Letra(letra = "i"), new Letra(letra = "n"),new Letra(letra = "s")])

const array = new Palabra(letras = [new Letra(letra = "a"), new Letra(letra = "r"), new Letra(letra = "r"), new Letra(letra = "a"), new Letra(letra = "y")])

const continue = new Palabra(letras = [new Letra(letra = "c"), new Letra(letra = "o"), new Letra(letra = "n"), new Letra(letra = "t"), new Letra(letra = "i"), new Letra(letra = "n"), new Letra(letra = "u"),new Letra(letra = "e")])

const clear = new Palabra(letras = [new Letra(letra = "c"), new Letra(letra = "l"), new Letra(letra = "e"), new Letra(letra = "a"), new Letra(letra = "r")])

const finally = new Palabra(letras = [new Letra(letra = "f"), new Letra(letra = "i"), new Letra(letra = "n"), new Letra(letra = "a"), new Letra(letra = "l"), new Letra(letra = "l"), new Letra(letra = "y")])

const this = new Palabra(letras = [new Letra(letra = "t"), new Letra(letra = "h"), new Letra(letra = "i"), new Letra(letra = "s")])

const where = new Palabra(letras = [new Letra(letra = "w"), new Letra(letra = "h"), new Letra(letra = "e"), new Letra(letra = "r"), new Letra(letra = "e")])

const delete = new Palabra(letras = [new Letra(letra = "d"), new Letra(letra = "e"), new Letra(letra = "l"), new Letra(letra = "e"), new Letra(letra = "t"), new Letra(letra = "e")])

const distinct = new Palabra(letras = [new Letra(letra = "d"), new Letra(letra = "i"), new Letra(letra = "s"), new Letra(letra = "t"), new Letra(letra = "i"), new Letra(letra = "n"), new Letra(letra = "c"), new Letra(letra = "t")])

const yield = new Palabra(letras = [new Letra(letra = "y"), new Letra(letra = "i"), new Letra(letra = "e"), new Letra(letra = "l"), new Letra(letra = "d")])

const extends = new Palabra(letras = [new Letra(letra = "e"), new Letra(letra = "x"), new Letra(letra = "t"), new Letra(letra = "e"), new Letra(letra = "n"), new Letra(letra = "d"), new Letra(letra = "s")])


