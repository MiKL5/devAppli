import Foundation

// Terms (conditions)
var isSunny = true
var lives = 2
// if
if isSunny == true {
        print("N'oublie pas la crème solaire")
}
if lives > 0 {
    print("Perdu! Vous pouvez continuer.")
    lives -= 1
}
print("Il vous reste \(lives) vie.s.")
lives = 0
if lives > 0 {
    print("Perdu! Vous pouvez continuer.")
    lives -= 1
}
print("Il vous reste \(lives) vie.s.")
// if ... else
isSunny = false
if isSunny {
    print("À la plage")
} else {
    print("Au boulot")
}
var age = 17
var majeur = 18
var hasLicense = false
if age >= majeur && hasLicense {
    print("Tu peut conduire la voiture")
} else {
    print("Tu ne peut pas conduire.")
}
// if ... else if ... else
age = 1
if age >= majeur && hasLicense {
    print("Tu peux conduire.")
} else if age >= majeur {
    print("Tu as l'âge de passer la permis.")
} else if hasLicense {
    print("Tu as le droit à la conduite   accompagnée.")
} else {
    print("Ce sera le siège pour bébé.")
}
age = 21
if age >= majeur && hasLicense {
    print("Tu peux conduire.")
} else if age >= majeur {
    print("Tu as l'âge de passer la permis.")
} else if hasLicense {
    print("Tu as le droit à la conduite   accompagnée.")
} else {
    print("Ce sera le siège pour bébé.")
}
age = 21
hasLicense = true
if age >= majeur && hasLicense {
    print("Tu peux conduire.")
} else if age >= majeur {
    print("Tu as l'âge de passer la permis.")
} else if hasLicense {
    print("Tu as le droit à la conduite   accompagnée.")
} else {
    print("Ce sera le siège pour bébé.")
}
age = 16
hasLicense = true
if age >= majeur && hasLicense {
    print("Tu peux conduire.")
} else if age >= majeur {
    print("Tu as l'âge de passer la permis.")
} else if hasLicense {
    print("Tu as le droit à la conduite   accompagnée.")
} else {
    print("Ce sera le siège pour bébé.")
}

// switch (Pas de vérification, juste une comparaison)
var apparielPhoto = "Back"
switch apparielPhoto {
case "Front": print("Selfie")
case "Back": print("Photo de paysage")
case "Watch": print("Vue du poignet")
default: print("Pas de caméra") // est obligatoire
}
apparielPhoto = ""
switch apparielPhoto {
case "Front": print("Selfie")
case "Back": print("Photo de paysage")
case "Watch": print("Vue du poignet")
default: print("Pas de caméra")
}

var team = "OM"
switch team {
case "OM": print("Champion league")
case "PSG": print("Champion league")
case "ASM": print("Champion league")
case "SRFC": print("Europa")
case "OGCN": print("Conference")
case "OL": print("Sur la PlayStation")
default: print("Ligue 1")
}
team = ""
switch team {
case "OM": print("Champion league")
case "PSG": print("Champion league")
case "ASM": print("Champion league")
case "SRFC": print("Europa")
case "OGCN": print("Conference")
case "OL": print("Sur la PlayStation")
default: print("Ligue 1")
}
team = "ASM"
switch team {
case "OM" , "PSG" , "ASM": print("Champion league")
case "SRFC": print("Europa")
case "OGCN": print("Conference")
case "OL": print("Sur la PlayStation")
default: print("Ligue 1")
}
team = "ASM , OL"// 1 élément sinon il ne trouve pas
switch team {
case "OM" , "PSG" , "ASM": print("Champion league")
case "SRFC": print("Europa")
case "OGCN": print("Conference")
case "OL": print("Sur la PlayStation")
default: print("Ligue 1")
}
// guard else (vérifie une condition à l'intérieur d'une fonction)
var swiftIsEasy = true
func learnGuard() {
    guard swiftIsEasy else {
        print("I go back to see the previous lessons")
        return
    }
    print("I move on to the next lesson")
}
learnGuard()
// 'guard else' peut aussi servir aux valeurs optionnelles et se faire attribuer des constantes

// controlState (déclaration de contrôle de transfert : influence le déroulement du code)
    // continue
var courses : [String : Bool] = ["Carottes" : true , "Olives" : true , "Mozzarella" : false , "Pates" : false , "Moutarde" : false , "Betteraves" : true]
var doitAcheter: [String] = []
for (article , achete) in courses {
    if achete {
        continue
    }
    doitAcheter.append(article)
}
print(doitAcheter)
    // Break
var students = ["Marine" , "Aurore" , "Audrey", "Jo" , "Jack" , "William" , "Avrel"]
var cancre  = "Jo"
for student in students {
    print("Elève \(student)")
    if student == cancre {
        print("\(student) est puni.")
        break
    }
}
    // Fallthrough ()
switch cancre {
case "Marine" : print("Good student")
case "Audrey" : print ("Very good!")
case "Jack" : print("Very bad")
    fallthrough
case "Aurore" : print("Olympic sleep champion")
default : break
}
// unpack un optional (déballer un optionnel)
var name: String?
//name = "Catherine"
// if et !
if name != nil {
    print(name!)
} else {
    print("No name")
}
    // if let pour la créatio de veleur
name = "Catherine"
if let nameChecked = name {
    print("Le prénom vérifié est " + nameChecked)
} else {
    print("No name")
}
//name = ""
    // Guard et !
func guardSimple() {
    guard name != nil else {return}
    print ("Guard simple : " + name!) // possinle car c'est vérifié
}
guardSimple()
    // Guard let pour la création de veleur
func guardlet() {
    guard let newName = name else {return}
    print("Une constante existe grâce à guard let : \(newName)") // N'apparaît pas s'il n'y avait pas de nom
}
guardlet()
