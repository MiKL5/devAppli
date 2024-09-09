import UIKit


// Functions
var name: String? // ? = optionnelle
var surname: String?
var age: Int?
var sentence = ""
// Basic function
func welcome() {
    print("Welcome Coders")
}
welcome()

func setup() {
    name = "Matt"
    surname = "Codabee"
    age = 35
}
print("Hi! I'm \(name ?? "") , my surname is \(surname ?? "") , I'm \(age ?? 0) yers old") // ?? = ou
setup()
print("Hi! I'm \(name ?? "") , my surname is \(surname ?? "") , I'm \(age ?? 0) yers old")

func createSentence() {
    guard let newName = name else {return}
    guard let newSurname = surname else {return}
    sentence = "Hi Coders! I'm \(newName) \(newSurname)." // 1ère vérif
    if let newAge = age {
        sentence += "\nAnd I'm \(newAge) yo."
    }
}
setup()
print(sentence)
    // Function with parameters
func introduceYourself(me: String) {
    print("Hi , I'm \(me)")
}
introduceYourself(me : "ugly and mean")

func calculateEra(width : Double , height : Double) {
    let era = width * height
    print("The era is \(era)")
}
calculateEra(width: 3.14, height: 5.6)

func setupWidthParam(newName : String , newSurname : String , newAge : Int) {
    name = newName
    surname = newSurname
    age = newAge
    createSentence()
    //print(createSentenceWithReturn())
}
setupWidthParam(newName: "O'Nym", newSurname: "Ann", newAge: 50)
print(sentence)


func setupWidthParam(_ newName : String , _ newSurname : String , _ newAge : Int) { // `_ ` masque
    name = newName
    surname = newSurname
    age = newAge
    createSentence()
    }
setupWidthParam("De La Vega", "Diego", 91)
print(sentence)
    // Function with return (implique de récupérer un valeur)
/*func salutation(_ n: String) -> String {
    var retrn = ""
    guard let newName = name else {return retrn}
    guard let newSurname = surname else {return retrn}
    retrn = "Hi Coders , I'm \(newSurname) \(newName)"
    if let newAge = age {
        retrn += "\nAnd Im \(newAge) yo!"
    }
    //return retrn
} */
//var retour = createSentenceWithReturn()
//print(retour)

func isAuth(bool: Bool) -> String {
    return bool ? "User is logged in" : "User is loged out"
}

var check1 = isAuth(bool: true)
var check2 = isAuth(bool: false)
print(check1)
print(check2)
