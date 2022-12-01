import UIKit

var greeting = "Hello, playground"

class Person {
    let name : String
    let lastName : String
    
    var usrename : String {
        let aux = name + lastName
        return aux
    }
    
    init(name: String, lastName: String) {
        name = name.self
        lastName = lastName.self
    }
}

extension Person {
    var usename : String {
        
    }
}

