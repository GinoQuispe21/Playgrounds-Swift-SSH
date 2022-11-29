import UIKit

// Closures

func sortedArray (_ array: [Int]) -> [Int] {
    return array.sorted()
}

func manipulateArray(_ array: [Int], functionSorted: ([Int]) -> [Int]){
//  Sorted Function
    let sorted = functionSorted(array)
//  Manipulate Functions
    print(sorted)
}

manipulateArray([9,4,8,1,6,2,7,3,5], functionSorted: sortedArray(_:))
manipulateArray([9,4,8,1,6,2,7,3,5], functionSorted: sortedArray)
manipulateArray([9,4,8,1,6,2,7,3,5]) { (array) -> [Int] in
    //    return array.sorted { $0 > $1 }
    array.sorted {$0 > $1}
}
manipulateArray([9,4,8,1,6,2,7,3,5]) { $0.sorted {$0 > $1} }
    
// Login Simulate

func login(completion: @escaping (Bool, Int) -> ()) {
    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
        completion(true, 1)
    }
}

login(completion: {isLogin, num in
    if isLogin {
        print("usuario \(num) conectado")
    } else {
        print("usuario \(num) no conectado")
    }
})

let today = Date()

let dataFormatter = DateFormatter()
dataFormatter.dateFormat = "dd/mm/yyyy"
let date = dataFormatter.date(from: "21/04/2001")
let date1 = dataFormatter.date(from: "01/10/2001")
let date2 = dataFormatter.date(from: "11/05/2011")
//let currentDate = dataFormatter.date(from: aux)

print(date ?? 0)

var dateList: [Date] = []

if let aux = date {
    dateList.append(aux)
}

if let aux1 = date1 {
    dateList.append(aux1)
}

if let aux2 = date2 {
    dateList.append(aux2)
}

for element in dateList {
    print(element)
}

if let younger : Date = dateList.max() {
    print("El más joven: ", younger)
}

func older() {
    guard let older : Date = dateList.min() else {
        print("upsi")
        return
    }
    print("El más viejo: ", older)
}

older()

// More Closures

//func retrieveUsernames(userId: Int, completion: (String) -> ()) {
//    let arrayUser = ["Pepito","Luis","Pablo","Manuel"]
//    completion(arrayUser[userId])
//}
//
//retrieveUsernames(userId: 2) { username in
//    print("-->> Username: \(username)")
//}

func retrieveUsernames(userId: Int, completion: @escaping (String) -> ()) {
    let arrayUser = ["Pepito","Luis","Pablo","Manuel"]
    print("-->> before")
    DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
        print("-->> after")
        completion(arrayUser[userId])
    }
}

retrieveUsernames(userId: 2) { username in
    print("-->> username:: \(username)")
}
