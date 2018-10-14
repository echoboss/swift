import UIKit



var total = 0
//... 包含4、 ..< 不包含
//for i in 0...4 {
//    print("i: \(i)")
//}


//函数
func sayHi(name: String,hi: String) -> String {
    return "\(hi) \(name)"
}

var hi:String = sayHi(name: "LuYoo", hi: "Hello")
//print(hi)

//形参标签
func sayHello(n name: String) -> String {
    return "Hello \(name)"
}
//print(sayHello(n: "Liu"))

//返回多个值
func calculateStatistics(scores: [Int]) -> (min:Int,max: Int,sum:Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for i in scores {
        if i > max {
            max = i
        }else if min < i {
            min = i
        }
        sum += i
    }
    
    return (min,max,sum)
}

let student = [1,2,3,4,5,]
var result = calculateStatistics(scores: student)
//print(result.sum)

//嵌套函数、匿名函数
func returnFifteen(z: Int) -> Int {
    var y = 10
    func add() {
        y = y + z
    }
    add()
    return y
}

//print(returnFifteen(z: 5))


//函数作为返回值
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(num: Int) -> Int {
        return num + 1
    }
    return addOne
}

var incrementer = makeIncrementer()

//print(incrementer(3))


//函数作为参数
func hasAnyMatches(list: [Int],condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            print("Item: \(item)")
            return true
        }
        
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var members = [100,2,6,19,9,7,11,10]
//print(hasAnyMatches(list: members, condition: lessThanTen))

//todo
let mappedNumbers =  members.map({ number in 3 * number })
//print(members)
//todo
let sortedNumbers = members.sorted{$0 > $1}
//print(sortedNumbers)


//类
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

var shape = Shape()
shape.numberOfSides = 100
//print(shape.simpleDescription())


class Person {
    var name:String
    var age: Int
    var gender: Character
    
    init(name:String,age:Int,gender:Character) {
        self.name = name
        self.age = age
        self.gender = gender
    }
    
    func get() -> String {
        return "My name is: \(name), My age is: \(age), My gender is: \(gender)"
    }
    
    func setAge(age:Int) -> String {
        self.age = age
        return get()
    }
    
    
    
}

var p = Person(name: "LuYoo", age: 18, gender: "m")
//print(p.get())
//print(p.setAge(age: 21))

//类继承
class Child: Person {
    
    var scores = Array<Int>()
    
    init(scores: [Int],name: String,age: Int,gender: Character) {
        self.scores = scores
        super.init(name: name,age: age,gender: gender)
    }
    
    func calculateStatistics() -> (min:Int,max: Int,sum:Int) {
        var min = self.scores[0]
        var max = self.scores[0]
        var sum = 0
        
        for i in self.scores {
            if i > max {
                max = i
            }else if min < i {
                min = i
            }
            sum += i
        }
        
        return (min,max,sum)
    }
    
    //TODO
    var perimeter : Int {
        get {
            return age
        }
        set {
            self.age = self.age + newValue
        }
    }
    
    
    override func setAge(age: Int) -> String {
        self.age = age + 1
        return self.get()
    }
    
}


var child = Child(scores: student, name: "LuYoo", age: 19, gender: "m")

//print(child.get())
//print(child.calculateStatistics())
//child.perimeter = 10
//print(child.setAge(age: 10))


//枚举
//
enum Suit {
    case one,tow,three,four,five
    func simpleDescription() -> String {
        switch self {
        case .one:
            return "one"
        case .tow:
            return "tow"
        case .three:
            return "three"
        case .four:
            return "four"
        case .five:
            return "five"
       
    }
}



let e = Suit.one
print(e)












