import UIKit

// Arrays

var names = ["Luis", "Carmen", "Jorge"]
print(names)

for name in names{
    print(name)
}

var letters: [String] = ["a", "b","c"]
print(letters.count)

var numbers = [1,2,3,4,5]
for i in stride(from: 0, to: numbers.count, by:1) {
    print(numbers[i])
}
print(numbers.isEmpty, numbers.count)

// $0 es cualquier elemento de la lista

let x = numbers.filter {$0 > 3}
let y = numbers.filter {$0 == 1}
print("Mayores a 3 \(x) e igual a 1 \(y)")

var array_map: [Int] = [1,2,3]
let array_string = array_map.map {String($0)}
print(array_string)

// Class

class User {
    
//  Stored Properties
    
    var name: String
    var lastName: String
    
    static var country =  "Peru"
    
//  Computed Property
    
    var fullname:String {
        set {
            print("fullname: ", newValue)
        }
        get {
            return name + " " + lastName
        }
    }
    
// Constructor
    
    init(name: String, lastName: String){
        self.name = name
        self.lastName = lastName
    }
    
    func run(){
        print("Running!")
    }
}

class UserRemote: User {
    func login(){
        print(name)
    }
}

var user1 = User(name: "Gino", lastName: "Quispe")
print(user1.name, user1.lastName)
user1.run()
print("My full name is \(user1.fullname)")
user1.fullname = "AEA"
print("My new full name is \(user1.fullname)")
print("Im front: \(User.country)")
// Private / Public / Integrade

// Reference Type

var user2 = user1
user2.name = "Salvador"
print("User 2", user2.name)
print("User 1", user1.name)

// Structs

struct UserStruct {
    
    var name: String
    var lastName: String
    
    init(name: String, lastName: String){
        self.name = name
        self.lastName = lastName
    }
    
    public func goal() {
        print("SIUUUU!")
    }
}

var userStruct = UserStruct(name: "Cristiano", lastName: "Ronaldo")
print(userStruct.name, userStruct.lastName)
userStruct.goal()

// Protocol = Interface

// Value Type

var userStruct1 = userStruct
userStruct1.name = "Lionel"
print(userStruct.name)
print(userStruct1.name)

// Tuplas

let movies = ("Movie1", "Movie2", "Movie3")
print(movies.1)
let contact = ("A", 19, false, 1.70)
print (contact.2)
let (name, age, gay, high) = contact
print("u are?", gay)


func u_are() -> String {
    return "Si"
}
