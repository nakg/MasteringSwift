




let num: Int? = 123
let num2: Int? = 456

if let innerNum = num, let innerNum2 = num2 {
	print(innerNum, innerNum2)
}
guard let innerNum = num else {
	fatalError()
}
print(innerNum)
