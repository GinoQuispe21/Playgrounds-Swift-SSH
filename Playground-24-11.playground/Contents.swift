import UIKit

// Types of variables:
// String, Int, Float, Bool, Double

// Mutable Variables

var x: String = ""
print(x)

var student: String = "Gino"
var lastName = ""
lastName = "Quispe"
var age: Int = 18
print(student)
print("LastName: \(lastName)", "Age: \(age)")

// Inmutable Variables

let isAlive: Bool = true
// isAlive = false WRONG!

// Important for Core Data
// Int64 -> valores positivos y negativos
// UInt64 -> valores positivos

//Optional Variables (null = nil)

let mascota: String? = nil
// let mascota: String? = "Pancho"
// Unpackage

// print("Mascota: \(mascota!)")
print("Mascota: \(mascota ?? "fido")")
// Forced -> ! (not recommended)
// if let
// guard let
// ??

if isAlive == true {
    print("Is true")
} else {
    print("Is false")
}

var celular: String? = nil

if let auxUnpackage = celular {
    print("N de caracteres: ", auxUnpackage)
} else {
    print("Celular es nulo")
}

var teamSoccer: String? = nil

let needUpdate = (4 > 3) ? true : false
print(needUpdate)

var ios: String? = nil

func myFunction(){
    guard let unpackage = ios else {
        print("Es nil")
        return
    }
    print("Unpackage: ", unpackage)
}

myFunction()
