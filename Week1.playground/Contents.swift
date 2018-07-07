
 // Swift Basic

 // 1.
let PI:Double = 3.14        //圓周率
let radius:Double = 4.0     //直徑長
let area = (PI * radius) + (PI * radius)  //因為 “＊“ 是Binary operator ,所以將公式寫成兩個相加，因此用 let 即可解決。

 // 2.
let x:Double = 12.3
let y:Double = 23.5
let average:Double = (x+y)/2

 // 3.
/**
 (i) 將變數average設程Double type即可解決此問題
（ii）10/3為兩個整數相除，所以答案只會是整數型態，因此會得到3 ; 10.0/3.0為浮點數型態相除，所以答案會是浮點數型態，因此會得到3.33333333。
**/

 // 4.
/**
 var flag: Boolen = true
 var inputString: String = "Hello world"
 let bitsInBite: Int = 8
 let averageScore: Double = 86.8
**/

 // 5.
var salary : Int = 22000
salary += 28000

 // 6.
/**
 Equality operator : " == "
**/

 // 7.
let a = 10
let b = 3
let remain = a%b

 // 8.
/**
 var : 若將值設成var型態，則變數的內容可任意更改。
 let : 若將值設成let型態，則變數的內容不可任意更改。
**/

 // 9.
/**
 (1) can not start with a number
 (2) no whitespace characters
 (3) no special characters
 (4) no mathematical symbol
**/

 // Swift Collection and Control Flow

 // array

 // 1.
var myFriends:[String] = []

 // 2.
myFriends.append("Lan")
myFriends.append("Bomi")
myFriends.append("Kevin")

 // 3.
myFriends.append("Michael")

 // 4.
myFriends.remove(at:2)

 // 5.

for name in myFriends{
    print(name)
}

 // 6.
//myFriends[5]  error , because index out of range .

 // 7.
myFriends[0]

 // 8.
myFriends[myFriends.count-1]

 // Dictionary

 // 1. 2.
var myCountryNumber:[String:Int] = ["US":1,"GB":44,"JP":81]

 // 3.
myCountryNumber["GB"] = 0

 // 4.
// var myCountryNumber:[String:Int] = [:]

 // For,While,Repeat

 // 1.
let lottoNumbers = [10,9,8,7,6,5]
for number in 3...5{
 print(lottoNumbers[number])
}

 // 2.
// 5,6,7,8,9,10
for number in 0...5{
    print(lottoNumbers[5-number])
}
// 10,8,6
for number in 0...2{
    print(lottoNumbers[number*2])
}

 // 3.
// 7,6,5
var num = 0
while  num < 3{
    num += 1
    print(lottoNumbers[num+2])
}

// 5,6,7,8,9,10
var index = 0
while index < lottoNumbers.count {
    index += 1
    print(lottoNumbers[6-index])
}
// 10,8,6
var dex = 0
while dex < 3{
 dex += 1
 print(lottoNumbers[(dex-1)*2])
}

 // 4.
// 5,6,7,8,9,10
var count = 0
repeat{
 print(lottoNumbers[5-count])
 count += 1
}while count <= 5

// 10,8,6
var con = 0
repeat{
  print(lottoNumbers[con*2])
  con += 1
}while con <= 2

 // if statement
 // 1.
var isRaining = true
if isRaining == true{
    print("it is raining.i don't want to work today")
}else{
    print("although it's sunny,i still don't want to work today")
}
 // switch
 // 1.
let jobLevel:Int = 3
   switch jobLevel{
    case 1 : print("Member")
    case 2 : print("Team leader")
    case 3 : print("Manager")
    case 4 : print("Director")
    default : print("We don't have this job")
   }

 // Function in Swift

 // 1.

func greet(person:String) -> String{
    return "Hell0 "+person
}

greet(person: "Celeste")

 // 2.

func multiply(a:Int,b:Int=10)->Void{
    print(a*b)
}

multiply(a: 5)

 // 3.
 /**
  The argument label is used when calling the function; each argument is  written in the function call with its argument label before it.
  The parameter name is used in the implementation of the function. By default, parameters use their parameter name as their argument label.
 **/

 // 4.
 /**
 (i)  輸出字串型態
 (ii) 輸出浮點數型態
 **/

 // Others



