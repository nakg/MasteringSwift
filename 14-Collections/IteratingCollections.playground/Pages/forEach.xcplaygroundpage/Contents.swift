//
//  Copyright (c) 2018 KxCoding <kky0317@gmail.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
//: [Previous](@previous)

import Foundation

/*:
 ## forEach
 */

// 주로 함수형 패러다임으로 코드를 작성할 때 사용. 반복적으로 실행하는 코드를 closure 파라미터로 받는다. 이 클로져는 하나의 파라미터를 가지고 있고 값을 리턴하지 않는다. for-in은 컬렉션에 저장된 요소가 루프상수로 전달되었지만, forEach에서는 클로져의 파라미터로 전달된다.


// Array의 열거. - 정렬.
print("Array", "=================")
let arr = [1, 2 ,3]
// 클로져 파라미터의 자료형은, 항상 요소의 자료형과 동일하다.
arr.forEach { (num) in
	print(num)
}

// Set의 열거. - 비정렬.
print("Set", "=================")
let set: Set = [1, 2, 3]
set.forEach { (num) in
	print(num)
}

// Dictionary의 열거. - 비정렬.
print("Dictionary", "=================")
let dict = ["A": 1, "B": 2, "C": 3]
dict.forEach { (elem) in
	print(elem.key, elem.value)
}


// for-in vs forEach
// for-in
func withForIn() {
	print(#function)
	let arr = [1, 2, 3]
	for num in arr {
		print(num)
		return
	}
}

func withForeach() {
	print(#function)
	let arr = [1, 2, 3]
	arr.forEach { (num) in
		print(num)
		return
	}
}

withForIn()
withForeach()
/*
차이점
1. for-in은 반복문이라, 내부에서 break문과 continue문을 사용할 수 있다. forEach는 이게 불가능함.
2. return문이 동작하는 방식이 다르다. for-in에서 return은 반복문 블록이 바로 종료된다. forEach에 클로져에있는 return문은 외부에는 영향을 주지 않는다. 반복횟수에도 영향을 안준다. 단순히, 지금 실행하고있는 클로져 코드를 종료할 뿐이다.

withForIn()
1 -> 첫번째 반복문에서 함수 전체가 종료되었다.
withForeach() -> 여기서의 리턴문은 함수실행에는 영향을 주지 않는다. 현재 실행중인 클로져만 종료할 뿐이다. 클로져 개별 return.
1
2
3
*/

