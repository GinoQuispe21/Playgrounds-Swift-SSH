import UIKit

let text : String = "la historia de mi vida"

func textCount (text: String){
    
    var dictionary = [Character:Int]()
    for letter in text {
        if letter == " " {continue}
        if dictionary.keys.contains(letter){
            if let aux = dictionary[letter] {
                dictionary[letter] = aux + 1
            }
        } else {
            dictionary[letter] = 1
        }
    }
    for value in dictionary {
        print("\(value.key) = \(value.value)")
    }
}

textCount(text: text)

