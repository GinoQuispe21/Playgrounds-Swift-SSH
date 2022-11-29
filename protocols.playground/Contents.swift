import UIKit

protocol Animal {
    var name: String { get set }
    func run()
    func speak()
}

class Lion : Animal {
    
    var name: String
    
    func run(){
        print("Lion runs!")
    }
    func speak(){
        print("Rooooouuuurrr!!!!!!!")
    }
    func eat(){
        print("the legs of this human are delicious :D")
    }
    
    init(name: String){
        self.name = name
    }
}

var myLion = Lion(name: "Alex") as Animal
myLion.speak()
print(myLion.name)
myLion.name = "Martin"
print(myLion.name)
//alex.eat() not works because alex is casted as animal not as lion


//SOLID -> I : Interface segregation
protocol AnimalFish {
    func swiming()
}

class Bonito: AnimalFish {
    func swiming() {
        print("Bonito is swiming")
    }
}
