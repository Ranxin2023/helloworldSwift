/* My first program in Swift 4 */

func printVariableDemo(){
    var myString = "Hello, World!"
    print(myString)
    var variable=42
    print("The value of variable is: \(variable)")
}

func loopDemo(){
    print("print from 0 to 9:")
    for i in 0..<10{
        print(i)
    }
}

func stringDemo(){
    var str="abcd"
    print("The length of str is \(str.count)")
    print("str equals to 'abce':\(str=="abce")")
    var num_str="123"
    if let num = Int(num_str) {
        print("The num minus 10 is \(num - 10)")
    } else {
        print("Invalid integer format")
    }
    /*
    This will cause an error:
    print("The second character is str is \(str[1])")
    */
    print("The second character is str is \(str[str.index(str.startIndex, offsetBy: 1)])")
    var str_arr = Array(str.utf8CString)
    print("str_arr[1] is\(str_arr[1])")
}

func arrayDemo(){
    //var arrThreeRepeat0 = [Int](repeating: 0, count: 3)
    var arrTenRepeat_1 = [Int](repeating: -1, count: 5)
    print("The element in arrTenRepeat_1 are:")
    for element in arrTenRepeat_1{
        print(element, terminator:"\t")
    }
    print()

    var arr:[Int]=[3, 1, 4, 7]
    arr.append(9)
    for element in arr{
        print(element, terminator:"\t")
    }
    print()
}

func matrixDemo(){
    print("matrix of 3*5 is ")
    var matrix=[[Int]](repeating:[Int](repeating: 0, count:3), count:5)
    for row in matrix{
        for value in row{
            print(value, terminator:"\t")
        }
        print()
    }
}

func setDemo(){
    var primes:Set=[2,3,7, 5,7]
    print("Number of primes in 10:\(primes.count)")
    print("Whether 4 is a prime number:\(primes.contains(4))")
}

func dictDemo(){
    var myDict=[Int: String]()
    myDict[10]="Ten"
    myDict[20]="Twenty"
    myDict[30]="Thirty"
    print("Whether 40 exist in myDict: \(myDict.contains{ $0.key == 40})")
    if arr[0] != 4{
        print("The first element of arr does not equal to 4")
    }
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
    func show()->Void{
        print("My name is \(self.name). I am \(self.age) years old.")
    }
}

func classDemo(){
    let p=Person("John", "Smith", 25)
    p.show()
}


func main(){
    printVariableDemo()
    loopDemo()
    arrayDemo()
    matrixDemo()
    setDemo()
    dictDemo()
    functionDemo()
    classDemo()
}

main()