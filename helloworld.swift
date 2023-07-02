/* My first program in Swift 4 */

func printVariableDemo(){
    let myString = "Hello, World!"
    print(myString)
    let variable=42
    print("The value of variable is: \(variable)")
}

func loopDemo(){
    print("print from 0 to 9:")
    for i in 0..<10{
        print(i)
    }
}

func stringDemo(){
    let num_str="123"
    if let num = Int(num_str) {
        print("The num minus 10 is \(num - 10)")
    } else {
        print("Invalid integer format")
    }
    let str="azbeacd"
    print("The length of str is \(str.count)")
    print("str equals to 'abce':\(str=="abce")")
    
    /*
    This will cause an error:
    print("The second character is str is \(str[1])")
    */
    print("The second character is str is \(str[str.index(str.startIndex, offsetBy: 1)])")
    let strArr = Array(str)
    print("str_arr[1] is: \(strArr[1])")
    // print("Ascii Value of strArr[1]:\(strArr[1].asciiValue!)")
    var countChar=[Int](repeating:0, count:26)
    for c in str.utf8{
        countChar[Int(c-97)] += 1
    }

    for (i, count) in countChar.enumerated(){
        print("Character: \(Character(UnicodeScalar(i+97)!)) Count: \(count)")
    }
}

func arrayDemo(){
    //var arrThreeRepeat0 = [Int](repeating: 0, count: 3)
    let arrTenRepeat_1 = [Int](repeating: -1, count: 5)
    print("The element in arrTenRepeat_1 are:")
    for element in arrTenRepeat_1{
        print(element, terminator:"\t")
    }
    print()

    var arr:[Int]=[3, 1, 4, 7]
    arr.append(9)
    if arr[0] != 4{
        print("The first element of arr does not equal to 4")
    }
    for element in arr{
        print(element, terminator:"\t")
    }
    print()
}

func matrixDemo(){
    print("matrix of 3*5 is ")
    let matrix=[[Int]](repeating:[Int](repeating: 0, count:3), count:5)
    for row in matrix{
        for value in row{
            print(value, terminator:"\t")
        }
        print()
    }
}

func setDemo(){
    let primes:Set=[2,3,7, 5,7]
    print("Number of primes in 10:\(primes.count)")
    print("Whether 4 is a prime number:\(primes.contains(4))")
}

func dictDemo(){
    var myDict=[Int: String]()
    myDict[10]="Ten"
    myDict[20]="Twenty"
    myDict[30]="Thirty"
    print("Whether 40 exist in myDict: \(myDict.contains{ $0.key == 40})")
    
    /*
    These code has some error and do not know how to debug
    var parenthesesDict: [Character: Character] = ["(":")", "[":"]", "{":"}"]
    print("The corresponding parenthesis of { is: \(parenthesesDict["{"])")
    */
}

func recur(_ n: Int)->Int{
    if n==0{
        return 1
    }
    return n*recur(n-1)
}

func functionDemo(){
    print("11! is \(recur(11))")
}


class Person{
    var name:String
    var age:Int
    init(_ firstName:String,_ lastName:String, _ age:Int){
        self.name=firstName+" "+lastName
        self.age=age
    }
    func introduce()->Void{
        print("My name is \(self.name). I am \(self.age) years old.")
    }
}

class Student:Person{
    var schoolName:String
    var major:String
    init(_ firstName:String, _ lastName:String,_ age:Int, _ schoolName:String, _ major:String){
        self.schoolName=schoolName
        self.major=major
        super.init(firstName, lastName, age)
    }
    override func introduce()->Void{
        print("Dear professor:","My name is \(self.name). I am \(self.age) years old.",
        "I am a \(self.schoolName) student. My major is \(self.major).", separator:"\n")
    }

    func study()->String{
        switch self.major{
            case "Computer Science":
            return "Writing Code"
            // break; delete that
            case "Biology":
            return "Doing Lab";
            default:
            return "Nothing"
            // break;
        }
        // return "";
    }

    func getName()->String{
        return self.name
    }
}
func classDemo(){
    let p=Person("John", "Smith", 25)
    p.introduce()
    let s=Student("John", "Smith", 25, "UCDavis", "Computer Science")
    s.introduce()
    print("What \(s.getName()) is Studying:\(s.study())")
}


func main(){
    printVariableDemo()
    loopDemo()
    stringDemo()
    arrayDemo()
    matrixDemo()
    setDemo()
    dictDemo()
    functionDemo()
    classDemo()
}

main()