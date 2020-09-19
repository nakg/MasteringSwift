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
# Automatic Reference Counting
*/

class Person {
	var name = "John Doe"
	
	// 인스턴스가 제거되기 직전에 자동으로 호출된다.
	deinit {
		print("person deinit")
	}
}

var person1: Person?
var person2: Person?
var person3: Person?

person1 = Person() // person1과 Person instance가 강한참조로 연결되고 카운트가 1 늘어난다.
person2 = person1
person3 = person1 // retain, release는 ARC가 알아서 호출한다.

person1 = nil // 소유권을 포기한다. 강한참조게 제거되고 참조 카운트가 1씩 감소한다.
person2 = nil // 소유권을 포기한다. 강한참조게 제거되고 참조 카운트가 1씩 감소한다. 여기까진 참조카운트 1이라서 인스턴스는 제거되지 않는다.
person3 = nil // 마지막 소유자의 소유권 포기. 참조카운트 0이되서 deinit은 여기서 호출.














