import UIKit

class Person {
    var name: String
    var fatherLastName: String
    var motherLastName: String
    var birthDate : String
    var dni: String
    var gender: String
    var email: String
    var brotherCount: Int

    var username: String {
        let firstSpace = email.firstIndex(of: "@") ?? email.endIndex
        let firstName = email[..<firstSpace]
        return String(firstName)
    }
    
    var age: Int {
        let substring = birthDate.suffix(4)
        let year = Int(substring) ?? 0
        return 2022 - year
    }
 
    var formatName: String {
        let aux = motherLastName.prefix(1)
        return name + " " + fatherLastName + " " + String(aux) + "."
     }
    
    init(name: String, fatherLastName: String, motherLastName: String, birthDate: String, dni: String, gender: String, email: String, brotherCount: Int){
        
        self.name = name
        self.fatherLastName = fatherLastName
        self.motherLastName = motherLastName
        self.birthDate = birthDate
        self.dni = dni
        self.gender = gender
        self.email = email
        self.brotherCount = brotherCount
    }
    
}

var people: [Person] = []
var womens: [Person] = []
var mens: [Person] = []

func generateData(){
    people.append(Person(name: "Carlos", fatherLastName: "Robles", motherLastName: "Gomes", birthDate: "06/08/1995", dni: "78451245", gender: "M", email: "carlos.robles@hotmail.com", brotherCount: 2))
    people.append(Person(name: "Miguel", fatherLastName: "Quispe", motherLastName: "Otero", birthDate: "28/12/1995", dni: "79451654", gender: "M", email: "miguel.angel@gmail.com", brotherCount: 0))
    people.append(Person(name: "Karla", fatherLastName: "Flores", motherLastName: "Rosas", birthDate: "15/02/1997", dni: "77485812", gender: "F", email: "Karla.alexandra@hotmail.com", brotherCount: 1))
    people.append(Person(name: "Nicolas", fatherLastName: "Quispe", motherLastName: "Zeballos", birthDate: "08/10/1990", dni: "71748552", gender: "M", email: "nicolas123@gmail.com", brotherCount: 1))
    people.append(Person(name: "Pedro", fatherLastName: "Picasso", motherLastName: "Betancur", birthDate: "17/05/1994", dni: "74823157", gender: "M", email: "pedroandrepicasso@gotmail.com", brotherCount: 2))
    people.append(Person(name: "Fabiola", fatherLastName: "Palacio", motherLastName: "Vega", birthDate: "02/02/1992", dni: "76758254", gender: "F", email: "mailto:fabi@hotmail.com", brotherCount: 0))
}

func showData() {
    for person in people{
        print(person.name, person.fatherLastName, person.motherLastName, person.birthDate, person.dni, person.brotherCount, person.email)
    }
}

func arraysGenders() {
    for person in people {
        if person.gender == "F" {
            womens.append(person)
        } else {
            mens.append(person)
        }
    }
    print("\n")
    print("Cantidad de mujeres", womens.count)
    print("Cantidad de hombres", mens.count)
    print("\n")
    print("Hombres:")
    for p in mens{
        print(p.name)
    }
    print("\n")
    print("Mujer:")
    for p in womens{
        print(p.name)
    }
}

func maxAndMinPerson(){
    if let older : Person = people.max(by: {$0.age < $1.age}) {
        print("Persona de mayor edad: ", older.name, older.age)
    }

    if let younger : Person = people.min(by: {$0.age < $1.age}) {
        print("Persona de menor edad: ", younger.name, younger.age)
    }
}
    
func brothers(){
    let more2Brothers = people.filter { $0.brotherCount > 1}
    print("\n")
    print("Más de 1 hermano")
    for p in more2Brothers{
        print(p.name)
    }
}
    
func formatName() {
    print("\n")
    print("Format Name:")
    for p in people {
        print(p.formatName)
    }
}

func usernames() {
    print("\n")
    print("Usernames:")
    for p in people {
        print(p.username)
    }
}
    
generateData()
showData()
//maxAndMinPerson()
//arraysGenders()
//brothers()
//formatName()
//usernames()

