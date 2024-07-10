import UIKit

var greeting = "Hello, playground"
var name = "Aris"
let name2 = "Aris"
var age = "30"
age = "31"

var symbol:Character = "e"
var symbol2:Character = "\u{2665}"
print(symbol2)

//STRING
var dogName:String = "Bimbo"

//INT
var year:Int = 2024

//FLOAT
var piFloat:Float = 3.142113131313131333
print(piFloat)

//DOUBLE
var piDouble: Double = 3.142131313131133
print (piDouble)

//BOOL
var imHappy = true

//Operadores Aritmeticos
var a:Int = 5
let b:Int = 10

var result = a + b //SUMA
print(result)

a = a + b
print(a)

var subtract = a - b //RESTA
var multiply = a * b //RESTA
var divide = a / b //RESTA
var module = a % b //Modulo

// Operadores de asignacion
var example = 5
//example = example + 10
example += 10
example -= 10
example *= 10
example /= 10
example %= 10
print (example)

//Operadores Lògicos
let age2 = 18

let isOlder = age2 > 18
let isYounger = age2 < 18
let isEqual = age2 == 35
let isNotEqual = age2 != 35
let isOlderOrEqual = age2 >= 18
let isYoungerOrEqual = age2 <= 18

let isSunny: Bool = true
let temperature:Int = 78

let isPleasant:Bool = temperature > 25 && isSunny //and
let goToBeach:Bool = temperature > 25 || isSunny //or
let wearHat: Bool = !isSunny
print (goToBeach)

let integerNumber:Int = 34
let decimalNumber:Double = 25.65
let superNumber:Double = Double(integerNumber) + decimalNumber
let superNumber2:Int = integerNumber + Int(decimalNumber)
print(superNumber)


//EJERCICIO 1: Cal Asistencia
let asistencias:Double = 10
let totalClases:Double = 20
let resultadoAsistencia:Double = (asistencias/totalClases) * 100
print("El resultado de asistencia es: \(resultadoAsistencia)")

//EJERCICIO 2: Calc IMC
let peso:Double = 76
let altura:Double = 1.80
let resultado:Double = (peso/(altura*altura))
print("Tu IMC es de : \(resultado)")

//EJERCICIO 2: Calc IMC
let precioOriginal:Double = 76
let porcentajeDescuento:Double = 1.80
let precioDescuento:Double = precioOriginal - (precioOriginal * porcentajeDescuento/100)
print("El precio original es de: \(precioOriginal) y con el descuento del \(porcentajeDescuento)%, tu producto se queda en \(precioDescuento)")

//Funciones
func showMyName(){
    print("Hola, es mi primera funcion.")
}

showMyName()

func showMyCustomName(nombre:String){
    print("Hola \(nombre)")
}

showMyCustomName(nombre: "Marcelo")

func calculate(_ a:Int,_ b:Int){
    let result = a + b
    print ("El resultado es \(result)")
}

calculate(10,23)

//let mySuperCalc:Int = calculate(a:3, b:5)
//print(mySuperCalc)

//IF-ELSE
let userAge = 19
if userAge >= 18{
    print("Eres mayor de edad")
}else{
    print("Eres menor de edad")
}

func gretting(_ hour:Int){
    if hour < 18{
        print("Buenas tardes")
    }else if hour < 12{
        print("Buenas tardes")
    }else{
        print("Buenas noches")
    }
}

gretting(16)

//SWITCH
func getMonthWithSwitch(_ month: Int){
    switch month{
    case 1: print("Enero")
    case 2: print("Febrero")
    case 3: print("Marzo")
    case 4: print("Abril")
    case 5: print("Mayo")
    case 7,8,9: print("Trimestre")
    default: print("Introduce un mes valido.")
    }
}

getMonthWithSwitch(4)

//EJERICIO 4: Area de un circulo

func calculateCircleArea(_ radius:Double) -> Double{
    return Double.pi * radius * radius
}

let radius:Double = 10
let result2 = calculateCircleArea(radius)
print ("El àrea de un circulo con un radio de\(radius) 10 es de \(result2)")


//EJERCICIO 5: Numero positivo, negativo o cero

func numeroIdent(_ numero:Int){
    if numero < 0{
        print("El número es negativo")
    }else if numero > 0{
        print("El número es positivo")
    }else{
        print("El número es cero")
    }
}

func numeroIdentWhere(_ numero:Int){
    switch numero{
    case let x where x > 0: print("Positivo")
    case let x where x < 0: print("Negativo")
    default: print ("Es cero")
    }
}

numeroIdentWhere(7)
numeroIdent(-5)

//ARRAYS
let names:[String] = ["Aris", "Pepe", "David", "Marcelo"]
print(names[3])

//BUCLES

for i in 1...5{
    print("Hola Xcode")
}

var dayWeek:[String] = ["Lunes","Martes","Miercoles","Jueves"]

for day in dayWeek{
    if day == "Jueves"{
        print("Esta el jueves en el listado")
    }
}

var count = 0
while count < 10 {
    print("Hola! soy un contador y vale \(count)")
    count += 1
}

var count2 = 5
repeat {
    print ("PEP")
} while count2 < 0

var dayWeek2:[String] = ["Lunes","Martes","Miercoles","Jueves"]
            
for day in dayWeek2 {
    if day == "Jueves"{
        print("Es jueves")
        break
    }else{
        print("No es jueves")
    }
}

for day in dayWeek2 {
    print("------------")
    if day == "Jueves"{
        print("Es jueves")
        break
    }else{
        print("No es jueves")
    }
}

//EJERICIO 7: Numero que reciba e imprima tabla de multiplicar del 1 al 10

func multiplica(_ number:Int){
    print("Tabla de Multiplicacion Nº\(number)")
    for i in 1...10{
        print ("\(number) * \(i) = \(i*number)")
    }
}

multiplica(7)

//EJERCICIO 8: Programa para calcular numeros pares 1 al 100 y como resultado su suma

var totalSum2 = 0
for i in 1...100{
    if(i % 2 != 0){
        continue
    }
    totalSum2 += i
}

print("El resuktado es \(totalSum2)")

//EJERCICIO 9: Conteo de vocales de una palabra

func vocalCounter(_ text:String){
    var totalVocal:Int = 0
    for caracter in text{
        switch caracter.lowercased(){ //incluye minusculas
        case "a","e","i","o","u": totalVocal += 1
        default: continue
        }
    }
    print("El número de vocales para \(text) es de \(totalVocal)")
}

vocalCounter("Marcelo")

//TUPLAS

var tupla = ("Marcelo",31,true,"Calle Lima",6666666,1.89)
print(tupla.4)

var dicc:[String: Any] = ["name":"Marcelo","Age":31, "imHappy":true, "address":"Calle Lima"]
var myDiccName:String = dicc["name"] as? String ?? "Elle"
print(myDiccName)

for (key,value) in dicc{
    print("La clave \(key) contiene \(value)")
}

