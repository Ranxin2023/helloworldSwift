/* My first program in Swift 4 */
var myString = "Hello, World!"

print(myString)
print("print from 0 to 9:")
for i in 0..<10{
    print(i)
}

var variable=42
print("The value of variable is: \(variable)")

var str="abcd"
print("The length of str is \(str.count)")
/*
This will cause an error:
print("The second character is str is \(str[1])")
*/
print("The second character is str is \(str[str.index(str.startIndex, offsetBy: 1)])")

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
var myDict=[Int: String]()
myDict[10]="Ten"
myDict[20]="Twenty"
myDict[30]="Thirty"
print("Whether 40 exist in myDict: \(myDict.contains{ $0.key == 40})")
