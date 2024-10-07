import SwiftUI
    
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
}
