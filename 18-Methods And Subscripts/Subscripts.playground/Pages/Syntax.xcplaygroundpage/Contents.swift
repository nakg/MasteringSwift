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

import UIKit

/*:
 # Subscripts
 ![subscript](subscript.png)
 */

let list = ["A", "B", "C"]
list[0]










/*:
 ![subscript-syntax](subscript-syntax.png)
 */

class List {
	var data = [1, 2, 3]
	
	// subscript는 argument label이 필요하다면, 직접 2개로 만들어주어야한다. 2개이상의 파라미터이고 가독성 높이고싶을 때 제한적으로 사용.
	subscript(index: Int) -> Int {
		get {
			return data[index]
		}
		set {
			data[index] = newValue
		}
	}
}

var l = List()
l[0] // 1.
l[1] = 123
l[1] // 123

// 구조체에서의 Subscript
struct Matrix {
	var data = [[1, 2, 3],
				[4,5,6],
				[7,8,9]]
	
	// 읽기 전용 생성.set 생략. get 키워드 + { } 생략.
	subscript(row: Int, col: Int) -> Int {
		return data[row][col]
	}
}

let m = Matrix()
m[0, 0] // 1.
m[0, 10] // 배열의 범위를 벗어남. -> 에러의 발생. 전달된 파라미터가 올바른 인덱스 범위에 있는지 파악해야한다.

if m.data.startIndex <= 0 && m.data.endIndex > 0 {
	if m.data[0].startIndex <= 10 && m.data.endIndex > 10 {
		m[0,10]
	}
	print("index invalid1")
}
else {
	print("index invalid2")
}






