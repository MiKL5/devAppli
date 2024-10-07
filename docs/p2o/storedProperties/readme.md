# **Les propriétées stockées** <a href="../../../"><img src="https://upload.wikimedia.org/wikipedia/commons/9/9d/Swift_logo.svg" alt="Langage Swift" align="right" height="64px"></a>
Ce sont des variables définissants des caractéristiques communes à l'intégralité des objets créés par la classe ou structure. Et pourront avoir des valeurs différentes, mais devront automatiquemnt possédées des caractéristiques.
Une sctructure fonctionne de la même façon ; ce sont des variables.
```swift
class User {
    // Constructeur
    // propriétés
    var idUnique = UUID()
    var prenom: String = "Marie"
    var nom: String = "DUPONT"
    var age: Int = 58
    var imageString: String = ""
    var ville String = "Caen"
    var idUnique = UUID()
    var following: [String] = []
    var followers: [String] = []
    // Méthodes
}

struct Post {
    // Constructeur
    // Propriétés
    var user: User = Mary
    var imageString: String?
    var desc = "Ceci est un post"
    var date: String "26 mai 1993"
    var likes: Int = 42
    var comments: [String: String] = ["Kate" : ":-)"]
    // Méthodes
}

var marie = User()
var name = marie.prenom + " " + marie.nom
print(name)
marie.prenom "Maria"
print(name)
maria.followers.append(marie.id.uuidString)
print(maria.followers)

var publicationChat = Post()
print(puvlicationChat.comments)
print(puvlicationChat.date)
publicationChat.date = "7 sept 2024"
print(puvlicationChat.date)
```