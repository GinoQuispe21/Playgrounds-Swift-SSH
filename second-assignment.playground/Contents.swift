import UIKit

let text : String = "La HistoriA de mI vidA"
var dictionary = [Character:Int]()

func textCount (text: String) -> Dictionary<Character, Int>{
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
    return dictionary
}

func printDictionary (dictionary: Dictionary<Character, Int>) {
    for value in dictionary {
        print("\(value.key) = \(value.value)")
    }
}

dictionary = textCount(text: text)
printDictionary(dictionary: dictionary)

