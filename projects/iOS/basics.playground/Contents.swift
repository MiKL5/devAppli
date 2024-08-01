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
let additionInt:Int = positionClassement + Int(voitureKilometrage)
print(additionInt)
let additionIntDouble = additionInt + Int(nbDouble) // caster nbDouble en Int
print(additionIntDouble)
let additionDoubleInt = Double(additionInt) + nbDouble
print(additionDoubleInt)
let additionFloat = Float(additionInt) + nbFloat
print(additionFloat)
/*
 Les strings
 Sur plusieurs lignes, elles contienent 3 guillemet
 */
var phrase:String = "Salut les codeurs." // la valeur n'est pas obligatoire mais plus rigoureuse pour éviter les erreurs
var aMettreUlterieurement:String
//print(aMettreUlterieurement) // est une erreur car elle n'est pas initialisée
aMettreUlterieurement = "Salut."
print(aMettreUlterieurement)
let aMettrePlusTard:String // idem n'est ne peut pas être changée
aMettrePlusTard = "Tu es en retard."
print(phrase , aMettreUlterieurement , aMettrePlusTard)
//aMettrePlusTard = "Non je suis à l'heure" // impossible déjà initialisée
var docstring = """
Ceci est une docstring.
Cela permet d'afficher un texte ou un dialogue dans un programme sur plusieurs lignes.
Ces trois lignes doivent apparaîtres dans la console.
"""
print(docstring)
// Une string sans valeur est NULL donc fait provoque un crash, mieux vaut l'initialiser vide et utiliser un constructeur de classe
// La mutabilité des string peut établie de deux façons
var personne = "Jean"
personne += "-Christophe GRANGÉ" // permet l'ajout
print(personne)
// La cocaténation
var premon1 = "Jean"
var prenom2 = "Christophe"
var nom = "GRANGÉ"
var nomComplet = premon1 + prenom2 + nom // Là nom plus, il n'y a pas d'espace
print(nomComplet)
var espace = " "
var nomComplet1 = premon1 + espace + prenom2 + espace + nom
print(nomComplet1)
// La sting d'interpolation
var metier = "romancier"
var interplationPresentation = "Hello, Je suis \(firstname) \(name), \(metier) et j'ai \(age) ans."
print(interplationPresentation)
// Accéder à tous les caractères d'une chaîne
// À chaque passage une constante lettre sera crée
for lettre in nomComplet1 {
    print(lettre) // tout est en 1 colonne dans le console
}
// Comprer les caractères d'une chaîne
print("La variable comporte \(nomComplet.count) lettres.") // la fonction count compte aussi les éventuels espaces
// tout en minuscule
let low = docstring.lowercased() // il y a des parenthèses ; c'est une méthode
print(low)
// tout en majuscule
let upper = docstring.uppercased()
print(upper)
// première lettre capitale
let cap = docstring.capitalized // pas de parenthèse ; c"est une propriété
print(cap)
//Concidérer le guillemet comme faisant partie de la chaîne, c'est l'échapement "escaping" de caractère
var citation = "\"L'amélioration continue vaut mieux que la perfection retardée.\" Marc TWAINE"
print(citation)
// Remplacer des mots
let interdit = "vert"
let sentennce = "L'arbre est bien vert"
let newSentence = sentennce.replacingOccurrences(of: interdit, with: "(le vocable est sensuré)")
print(newSentence)
// Metre des émoticones (ctrl + cmd + aspace)
var emoji = "😀"
print(emoji)
// Aficher la prmière lettre d'un mot avec la propirété first
print(interdit.first)
/*
 Les booléens
 servent souvent
 pour vérifier des valeurs par exemple
 Il y a plusieurs manières de changer un booléen
 == vérifi l'égalité
*/
var ceCoursEtCooll:Bool = true
var jePrefereLireUnLivre = false
print(ceCoursEtCooll)
print(jePrefereLireUnLivre)
jePrefereLireUnLivre = !jePrefereLireUnLivre
print(jePrefereLireUnLivre)
ceCoursEtCooll.toggle()
print(ceCoursEtCooll)
var isRealName = personne == "Matthieu"
print(isRealName)
/*
 Les tuples
 Est un groupe de plusieurs valeurs, dans une unique valeur.
 Elles peuvent êtres de n'importe quel type et pas forcément les mêmes
 Définies entre parenthèses et séparées pas les virgules
 L'erreur 404 est issue d'un tuple
 */
let httpStatus:(Int , String) = (404 , "Page non trouvée")
print(httpStatus)
print(httpStatus.0) // 404
let status:(isAlive:Bool , lives:Int) = (true , 5)
print(status)
print(status.isAlive) // Plus clair
let (code , message) = httpStatus
print(code)
print(message)
let (_ , msg) = httpStatus
print(msg)
/* 
 Les tableaux
 Les valeur sont entre crochets et séparés par des virgules
 L'initialisation peut se faire via des parenthèses, pour signifier de le créer
 ou avec des crochets vides
 Cela permet de compter, récupéer un élément par son index, ajouter, supprimer, vérifier s'il est vide, le parcourir via une boucle,
*/
var premiereListeOrdonee = [3 , 54 , 32 , 87] // Il est mieux de mettre le type [any ou autre entres crochets]
var listeMultiple:Any = [28 , "Jean" , true] // Le type any,permet l'hétérogénéité, nonobstant, ce n'est pas conseillé
// Compter
print(premiereListeOrdonee.count)
print(premiereListeOrdonee.first)
print(premiereListeOrdonee.last)
print(premiereListeOrdonee.isEmpty)
var secondeListeOrdonee:[Any] = []
print(secondeListeOrdonee.last)
print(secondeListeOrdonee.isEmpty)
// Parcourir en bouclant
var etudiants = ["Sophie" , "Jean" , "Georges" , "Annie" , "Sylvain" , "Céline"]
for etudiant in etudiants {
    // print("Etudiant nommé :\(etudiants)") // non car ils sont tous lités dans la ligne
    print("Etudiant nommé :\(etudiant)")
}
// Index
// Un tableau est une liste ordonnée, chaque éléments est défini par son index qui débute à 0
    // Répcupéré par l'index
let firstStudent = etudiants[0] // Sophie
print(firstStudent)
let lastStudent = etudiants[5] // Céline
print(lastStudent)
print(etudiants.count) // 6
print(etudiants[etudiants.count-1]) // Céline
    // Ajouter au tableau
etudiants.append("Bertrand")
print(etudiants)
etudiants.append(contentsOf: ["Tic" , "Tac"])
print(etudiants)
    // Insérer dans un tableau (avec un index)
etudiants.insert("Matththieu", at: 3)
print(etudiants)
etudiants.insert(contentsOf: ["Catarine" , "Yuri"], at: 1)
print(etudiants)
    // Concaténation
etudiants += ["Billy" , "Will"]
print(etudiants)
    // Supprimer
etudiants.removeFirst()
print(etudiants)
etudiants.removeLast()
print(etudiants)
    // Supprimer avec l'index
    // supprimer le 4e
etudiants.remove(at: 4)
print(etudiants)
    // Charcher l'index par rapport à Sylvain
let index = etudiants.firstIndex(where: {$0 == "Sylvain"})
if  index != nil { // pour enlevé Sylvain
    etudiants.remove(at: index!)
}
print(etudiants)
etudiants.removeAll()
print(etudiants)
etudiants=[]
print(etudiants)
// Les dictionnaires
// Listes analogues aux tableaux, cependant, ils ne sont pas ordonnées, inaccessible par un index ou une clé
// Ils contienent ["une clé et": une valeur chiffrée ou non]
// Ils stockent une liste d'éléments entre crochets, doivent avoir le même type, (isEmpty est l'une des similutudes)
var firstDico:[Int:String] = [1:"Maria" , 2:"John" , 3:"Anna"]
print(firstDico)
var dicoVide: [String:Bool]=[:]
var dicoVide1 = [String:Float]()
var dicoVide2 = Dictionary<String , String>()
print(dicoVide)
print(dicoVide1)
print(dicoVide2)
var courseDico:[String:Bool]=["Carotte":true , "Aubergine":false , "Fraise":true , "Tomates":false , "Poivrons rouges":false]
print(courseDico)
print(courseDico.count)
print(courseDico.isEmpty)
for(aliment , achete) in courseDico {
    print("\(aliment) a été acheté: \(achete)")
}
// print(courseDico.first) // impossible ; il n'y a pas d'index
    // Récupérer sans index
print(courseDico["Tomate"])
courseDico["Tomates"] = true
print(courseDico)
courseDico.updateValue(true, forKey: "Beetroots")
print(courseDico)
courseDico["Chocolat noire"]
print(courseDico)
    // Supprimer
courseDico.removeValue(forKey: "Aubergine")
print(courseDico)
courseDico.removeAll()
print(courseDico)
// Les optionnels
// Swift est un langage sensible, si une variable est vide, l'application crash
// L'optionnel N'EST PAS UN TYPE, c'est une façon de permette à une variable de ne pas avoir de valeur
// un ? est ajouter aprés le type de variable
var enfants:Int?
print(enfants)
enfants=2  // Si une quantité n'est pas définie, il y aura un crash
print(enfants!) // avec le point d'exclammation, elle n'est plus optionnnelle // il faut déballer de manière sûr un optionnel
// LES OPÉRATEURS
// Symbole vérifiant, modifiant ou combinant des valeurs.
// Les opérateurs peuvent êtres unaires pour une valeur, binaire pour deux et ternaire pour troix
// Unaire opérant sur une cible est préfixe, s'il est avant la valeur et suffixe, s'il est placer après
// Binaire opére sur deux cibles ; il est entre les valeurs
// Ternaire opére sur trois cibles, Swift a juste l'opérateur conditionnel (valeur1 ? valeur2 : valeur3)
    // Les opérateurs d'assignation
