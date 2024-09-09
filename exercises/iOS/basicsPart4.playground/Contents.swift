import Foundation

// Loops

// Datas
var array: [String] = ["Football" , "Tennis" , "Baseball" , "Basketball" , "Natation" , "Escrime" , "Paddle"]
var dict: [String: Int] = ["Matt":32 , "Jean":27 , "Sophie":21 , "Jack":42 , "Marie":14 , "Kim":9]
var phrase = "Essay with a sentence"
// for in
for sport in array { // une constante sport est créée, puis la boucle à lieu 7 fois
    print("Nouvelle à la boucle")
    print(sport)
}
for people in dict {
    print(people)
}
for (key , value) in dict {
    print("I'm \(key) , I'm \(value) yo.")
}
for (firstname , age) in dict {
    print("I'm \(firstname) , I'm \(age) yo.")
}
for character in phrase { // un caractère par ligne
    print(character)
}

// for in range (gamme en français)
for index in 0...10 { // jusqu'au bout grâce à ...
    print(index) // passe à tous les éléments de l'index
}
for subIndex in 0..<10{ // Avec ..< demande de s'arrêter à avant 10
    print(subIndex)
}
/*for arrayIndex in 0...array.count { // va de 0 à 10 : y en a 7
    print(array[arrayIndex])
}*/
for arrayIndex in 0..<array.count { // Affiche les 7
    print(array[arrayIndex])
}

// For in with stride (ajoute une récurence)
for value in stride(from: 0, to: 100, by: 2) { // ne passe pas à travers 100
    print(value) // Equivaut ..<
}
for v in stride(from: 0, through: 100, by: 20) {
    print(v) // Equivaut ...
}
for v2 in stride(from: 0, through: 100, by: 40) { // s'arrête à 80
    print(v2) // Equivaut ...
}

// La méthode for each
array.forEach{sport in // pout chaque élément, attribuer cette valeur
    print("\(dict) pratique \(sport).")
}

// While // Itère tant que l'on a pas trouver ce que l'on cherche car on ne le connaît pas
var sheep = 0
while sheep <= 20 {
    sheep += 1
    print("il y a \(sheep) mouton.s.")
} // Arrête à 21
sheep = 0
while sheep < 20 {
    sheep += 1
    print("il y a \(sheep) mouton.s.")
} // Arrête à 20
var sportFound = false
var index = 0

while !sportFound {
    if(array[index] == "Natation") {
        print("Sport trouvé : \(array[index])")
        sportFound = true
    } else {
        print("Aucun sport")
    }
    index += 1
} // La boucle s'arrête dés qu'elle à trouvée, même s'il y avait deux foix natation

// Repeat while (vérifi)
sheep = 0
repeat {
    sheep += 1
    print("Mouton n° \(sheep).")
} while sheep < 20
