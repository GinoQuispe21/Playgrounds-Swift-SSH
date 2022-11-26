import UIKit

func login(completion: (Bool, Int) -> ()) {
    completion(true, 1)
}

login(completion: { isLogin, num in
    print("Usuario Conectado")
})

login{ isLogin, num in
    if isLogin {
        print("usuario \(num) conectado")
    } else {
        print("usuario \(num) no conectado")
    }
}

let today = Date()
let aux = String(today)

let dataFormatter = DateFormatter()
dataFormatter.dateFormat = "dd/mm/yyyy"
let date = dataFormatter.date(from: "21/04/2001")
let date1 = dataFormatter.date(from: "01/10/2001")
let date2 = dataFormatter.date(from: "11/05/2011")
let currentDate = dataFormatter.date(from: aux)

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
