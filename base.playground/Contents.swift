import UIKit

//var 定义变量 `;`可以省略
var hi:String = "Hello LuYoo!";

//变量赋值
hi = "Hello LiuHeng!"

// 可以自动推导值的类型
var age = 18

//let 定义常量
let const = "Hello World!"

let height:Double = 173.5

let weight = 62

//String 将int转化为string
let ageStr = String(age)

let say = "Hello "
let Hi = "LuYoo!"

//字符串连接
let sayHello = say + Hi

//\()能直接将int转化为string
let info:String = "my name is: LuYoo, my age is: \(age), my height is: \(height)"

let quotations = """
   My name is: LuYoo;
 My age is: 18;
My height is: 173;
"""
//print(quotations)

//print输出 \()引用变量
//print("\(hi)\nmy age : \(age)\nmy height: \(height)\nmy weight: \(weight)")


//标准初始化一个Array<type>() 默认值为[]
var list =  Array<String>() // Or var list = [String]() Or var list = [""]

//print(list)
list = ["one","tow","three","frou","five","six"]
list.append("seven")
list[0] = String(1)

//print("list all: \(list)")


//标准初始化一个Dictionary<type,type>() 默认值[:]
var map =  Dictionary<String,Any>() //Or var map = [String:Any]()


map = ["name":"LuYoo","age":18,"gender":"m",]
map["height"] = 170
map["weight"] = 62.5

//print("map all: \(map)")


//for and if

let lis = [1,2,3,4,5,6,7]
var teamScore = 0

for i in lis {
    if i > 4 {
        teamScore += 1
    }
}
//print("teamScore value: \(teamScore)")

//默认值为type？为可选类型，默认值为nil
var optionalString: String? //= "LuYoo"


if optionalString == nil {
    optionalString = "Hello"
}


//print(optionalString)



//switch
let char: Character = "H"

switch char {
case "z":
    print("Not z")
case "H":
    print("Ok")
default:
    print("Wrong !")
}

//循环map

var student =  Dictionary<String,Array<Int>>()

student["jack"] = [1,2,3,4,5]
student["tom"] = [10,20,30,40,50]
//print(student)

for (k, v) in student {
    for i in v {
        print("\(k) : \(i)")
    }
}

var num: Int = 2
//while num < 100 {
//    num *= 2
//}

//repeat {
 //   num *= 2
//}while num < 100


//print("num: \(num)")







