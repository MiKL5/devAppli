import UIKit

// Assignation
var greeting = "Hello, playground"  // `=` est un opérateur d'assignation
greeting = "Ceci est une aire de jeu"
print(greeting)

// Les opérateurs unaires : modifie la valeur en négatif ou positif (- & ! ou ?)
var number = 3
print(number)
print(-number)
var negtaivenum = -2
print(negtaivenum)
print(-negtaivenum) // avec + ça ne change pas
var boolean = true
print(boolean)
print(!boolean)
print(!true)
boolean = !boolean
print(boolean)
var myOptional: String?
myOptional = "Je suis un optionel"
print(myOptional)
print(myOptional!) // n'est plus optionnel
// Les opérateurs unaire peuvent être préfixe ou sufixe

// Les opérateurs arithmétiques
var num1 = 5
var num2 = 12
var dec1 = 4.23
var dec2 = 7.45
// Addition
let addition = num1 + num2
print(addition)
let addition1 = dec1 + dec2
print(addition1)
// Soustraction
let soustraction = num1 - num2
print(soustraction)
let sousctraction1 = dec1 - dec2
print(sousctraction1)
// Multiplucation
let multi = num1 * num2
let multi1 = dec2 * dec2
// Division
let div = num1 / num2
let div1 = dec1 / dec2
// Modulo or remainder
let modulo = num1 % num2
// let modulo1 = dec1 % dec2  // impossible

// Les différents types
let additionTotale1 = Double(addition) + addition1
let additionTotale: Float = Float(addition) + Float(addition1)
print(additionTotale)
// Opérateur composé
var cuenta = 45
var pourboire = 5
cuenta += pourboire
print(cuenta)

// Les opérateurs de comparaison
var age = 18
var age1 = 21
var arr = ["Matt" , "Codabee"]
var arr1 = [34 , 56]
var arr2 = ["Codabee" , "BeeCoda"]
var arr3 = ["Beecoda"]
print(age == age1)
print(age != age1)
print(age < age1) // inférieur
print(age > age1) // supérieur
print(age <= age1)
print(age >= age1)
print(arr.count == arr1.count)
print(arr == arr2)
print(arr[1] == arr2[0]) // la casse est importante
print(arr2[1] == arr3[0])
print(arr2[1].lowercased() == arr3[0].lowercased())
print(arr2[1].uppercased() == arr3[0].uppercased())
// Fonctionne aussi avec les booléens

// Les opérateur && et ||
