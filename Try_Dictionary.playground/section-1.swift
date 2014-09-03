// Playground - noun: a place where people can play

class Student {
    let name: String = "ssss"
    var i: String
    
    init(name:String) {
        self.name = name
    }
    func returnStudentID() {
        let studentID: Dictionary<String :Int> = ["Chatchai":54011212057, "Tiwa":54011212088, "Wattarayut":55011212035]
        
        for (name, i) in studentID {
            if !i.isEmpty {
                println("true")
                
            }
            else {
                println("false")
            }
        }
    }
}
let s = "ss"

let x = Student(name: "Tiwa")
let y = x.returnStudentID
