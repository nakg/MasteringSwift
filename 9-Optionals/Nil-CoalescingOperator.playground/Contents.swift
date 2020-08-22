import UIKit

/*:
 # Nil-Coalescing Operator
 */
var msg = ""
var input: String? = "Swift"

// 1.
if let inputName = input {
	msg = "Hello, " + inputName
} else {
	msg = "Hello, Stranger"
}

print(msg)

// 2.
var str = "Hello, " + (input != nil ? input! : "Stranger")
print(str)












/*:
 ## Syntax
 ````
 a ?? b
 OptionalExpression ?? Expression
 ````
*/
input = nil
str = "Hello, " + (input ?? "Stranger")
print(str)

























