import UIKit // comprend Foundation et les éléments UI pour la programmation
/*
 Commentaire de plusieurs lignes
 */
var greeting = "Hello, playground"
var age = 18

print(greeting + " !" , "Je suis prêt") // les + et les , pour ajouter mais pas les pointsÒ
print("J'ai \(age) ans.") // /() affiche en chaîne de caractèresÒ

// Constantes et variable
var first:Int = 1
print(first)
first = 45
print(first)
let constante:String = "Peux-tu modifier ceci ?"
print(constante)
//constante = "C'est impossible de changer une constante"
// Le tyoe inference est optionnel consiste à retrouer le type utiliser dans la valeur, nonobstant, pour les nombres, il peut être nécesssaire de stipuler Int, Float, Double ; ça peut être confu celon la valeur de base.
var infered1 = 68
//infered1 = "Hi! // Impossible car il a inférer que c'est un entier. Ne être qu'un entier
infered1 = 74
/*
 La convention de nommage permet l'uniformité d'un développeur à l'autre
 Un nom de var et de let doit être claire, débute par une minuscule ou _ pour les variables privées et utilise le camelCase
 Et souvent en anglais
*/
var playerName = "John DOE"
// Le point virgule n'est utile que s'il y a plusieur déclarations sur la même ligne
let name = "Grangé" ; let firstname = "Jean-Christophe" ; print (firstname , name)
/*
 Les nombres entiers
 sont signés signed Int
 ou non signés unsigned Uint
 ce dernier ne peut pas être négatif
 Les nombres sont en 8, 16, 32 et 64 bits ce qui influence la valeur maximale
 Il n'est généralement pas d'usage de spécifier la taille d'un Int (Int32), pour qu'il puissent opérés entre eux
 */
var positionClassement:Int = 3
var voitureKilometrage = 75032
var joursAvantLesVacances = -60
//var jourAvantLaRentrée:UInt = -120
var jourAvantLaRentrée:UInt = 120
/*
 Les nombres décimaux
 le float à 32 bits
 le double à 64 bits
 sans précision du type c'est un double
 s'agissant de la typographie anglaise, ont utilise un . et pas de ,
 */
let nbFloat:Float = 354.432
let nbDouble:Double = 43.6666
//let addition = nbFloat + nbDouble // est impossible en l'état
/*
 La conversion des types
 Int vers Float, Double vers Int, ...
 */
