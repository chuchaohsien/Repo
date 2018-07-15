
  // Objective-Oriented Swift

  // 1.

enum Gender {
    case male
    case female
    case undefined
}

class Animal {
    let gender : Gender
    
    init(gender:Gender){
        self.gender = gender
    }
    func eat(){
        print("I eat everything")
    }
}
var gg = Animal(gender: .male)
gg.eat()

  // 2,

class Elephant : Animal{
    override init(gender:Gender){
        super.init(gender:gender)
    }
    override func eat(){
        super.eat()
        print("I eat an elephant")
    }
}
gg = Elephant(gender: .female)
gg.eat()

class Tiger : Animal{
    override init(gender:Gender){
        super.init(gender:gender)
    }
    override func eat(){
        super.eat()
        print("I eat a Tiger")
    }
}
gg = Tiger(gender: .male)
gg.eat()

class Horse : Animal{
    override init(gender:Gender){
        super.init(gender:gender)
    }
    override func eat(){
        super.eat()
        print("I eat a horse")
    }
}
gg = Horse(gender: .male)
gg.eat()


  // 3.

class Zoo {
    var weeklyHot: Animal
    init(weeklyHot: Animal){
        self.weeklyHot = weeklyHot
    }
}

let zoo = Zoo(weeklyHot: Tiger(gender: .male))

zoo.weeklyHot


  // 4.
/**
  初步認識了物件導向的函式，例如struct與class的用法，並會用instance method,type method 與 helper method等方法，首次寫程式遇到繼承的概念，與資料分析coding有著很不一樣的概念，需要再多花時間精進。
**/

  // 5.
/**
  struct與class都可使用protocol與instance method,不同點在於struct不能用於繼承，而class在定義變數的時候需要初始值。
**/

  // 6.
/**
 instance method(實例方法)是屬於某個特定類別或者列舉型別實例的方法，實例方法提供存取和修改實例屬性的方法或提供與實例目的相關的功能，並以此來支撐實例的功能;type method(型別方法)是實例方法的特別形態，也就是在實例方法之下在定義各種類別，只需要在 func 前面加上 static 即可。
**/

  // 7.
/**
 在class裡除了需要給變數型態以外，還要給予初始值，若無給定初始值則會出現error的錯誤，若初始值若未定，則可以加入 init{} 來告知complier初始值在稍後呼叫class的時候，會給予變數值;而struct則沒有給定初始值的規定。
**/

  // 8.
/**
  每一個實例方法都有一個隱含的類別叫做self,因此當電腦搞不清楚此是方法參數或是實例屬性時，可以利用self消除歧意。
**/

  // 9.
/**
  reference type are not copied when they are assigned to a variable or constant , or when they are passed to a function , rather than a copy , a reference to the same existing instance is used instead.
  a value type is a type whose value is copied when it is assign to a variable or constant , or when it is passed to a function.
**/

  // Enumerations and Optionals in Swift

  // 1.

enum Gasoline : String{
    case gasoline_92 = "92"
    case gasoline_95 = "95"
    case gasoline_98 = "98"
    case diesel = "diesel"
    
    func getPrice(gasoline : Gasoline) -> Double{
        switch gasoline {
          case .gasoline_92 : return 30.0
          case .gasoline_95 : return 32.3
          case .gasoline_98 : return 35
          case .diesel : return 27.0
        }
    }
}

Gasoline.gasoline_98.rawValue

/**
在enum裡，給予每個case的一個值(rawvalue)，之後如果想呼叫這個case，可以利用rawvalue來呼叫，例如：
 enum HTTPStatusCode : Int {
  case success = 200
  case forbidden = 403
  case unauthorized = 401
  case notfound = 404
 }
 let statusCode = 200
 let httpStatusCode = HTTPStatusCode(rawValue:statusCode){
  print(httpStatusCode)
 }
 這個例子最後我們可以print出success出來,因為success的associate value是200。
**/


  // 2. ?????
class Pet{
    var firstName: String?
    var lastName: String?
}
class People{
    var pet: Pet?
    
    //func People()->Pet?{
      //guard firstname = Pet?.firstName,
      //let lastname = Pet?.lastName
        // else {
           // return nil 1995
      //}
    //}
    
    //func anotherPeople()->Pet?{
        //if let firstname = Pet?.firstName,
        //let lastname = Pet?.lastName{
           // return nil
        //}
    //}
}


  // Protocol in Swift

  // 1. 2. 3. 4. 5. 6.

protocol PoliceMan{
    func arrestCriminals()
}

protocol Toolman{
    func fixComputer()
}

struct Person: PoliceMan {
    let Name : String
    let toolman : Toolman
    func arrestCriminals(){}
}

struct Engineer: Toolman{
    let engineer : String
    func fixComputer() {}
}
let engineer = Engineer(engineer: "engineer Steven")
let person = Person(Name:"Steven",toolman: engineer)

  // Error Handing in Swift

  // 1.

enum GuessNumberGameError:Error {
    case wrongNumber
}

class GuessNumberGame {
    var targetNumber = 10
    func guess(number: Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        
        print("Guess the right number: \(targetNumber)")
    }
}

  // 2.  ?????







