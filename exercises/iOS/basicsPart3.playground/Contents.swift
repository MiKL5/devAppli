import UIKit

var age = 18
var age1 = 85
var arr = ["Matt" , "BeeCode"]
var arr1 = ["Codabee" , "matt"]
// && et ||
let identity = age >= 18 && arr[0] == "Matt"
print(identity)
let identity1 = age >= 18 && arr[0] == "Matthieu"
let unDesDeux = age >= 18 || arr[0] == "Matthieu"
let unDesDeux1 = age1 >= 18 || arr[0] == "Matthieu"

// L'opérateur ternaire
var isSunny = true
var isRainy = true
let phrase = isSunny ? "Il y a du soleil" : "Il pleut"
print(phrase)
let phrase1 = isRainy ? "Il pleut" : "Il ne pleut pas"
print(phrase1)
var isRainy1 = false
let phrase2 = isRainy1 ? "Il pleut" : "Il ne pleut pas"
print(phrase2)
let phrase3 = !isRainy1 ? "Il pleut" : "Il ne pleut pas"

// ??
var opt: String?
opt =  "Salut"
var optionnel: String?
// optionnel = ""
let phrase4 = opt ?? "Rien n'est écrit"
let phrase5 = optionnel ?? "Rien n'est écrit"
optionnel = ""
let phrase6 = optionnel ?? "Rien n'est écrit" // chaîne vide
