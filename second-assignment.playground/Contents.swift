import UIKit

let text : String = "La HistoriA de mI vidA"

func textCount (text: String){
    let textLowerCased = text.lowercased()
    var dictionary = [Character:Int]()
    for letter in textLowerCased {
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
