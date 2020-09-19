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
 # Comparing Dictionaries
 */

var a = ["A": "Apple", "B": "Banana", "C": "City"]
var b = ["A": "Apple", "C": "City", "B": "Banana"]

a == b // true. 순서는 신경쓰지 않는다. 저장된 키와 값이 동일하면, 같다고 생각한다.

// banana 소문자로 바꿈.
a = ["A": "Apple", "B": "Banana", "C": "City"]
b = ["A": "Apple", "C": "City", "B": "banana"]

a == b // false.

// 동일한 딕셔너리인지 비교.
a.elementsEqual(b) { (lhs, rhs) -> Bool in
	print(lhs.key, rhs.key)
	return lhs.key.caseInsensitiveCompare(rhs.key) == .orderedSame && lhs.value.caseInsensitiveCompare(rhs.value) == .orderedSame
}
// -> 딕셔너리는 정렬되어있지 않다. 클로져파라미터로 전달될 때 항상 동일한 순서가 아니라 경우에따라 true, 잘못 들어오면 false 항상 다르게 리턴된다.

// 어떤 기준이든, 키를 정렬한 후 정렬된 키를 기준으로 비교해야한다.
let aKeys = a.keys.sorted() // 오름차순으로 키를 정렬. 이 키를 기준으로 딕셔너리를 비교.
let bKeys = b.keys.sorted()

aKeys.elementsEqual(bKeys) { (lhs, rhs) -> Bool in
	// 키가 동일하게 왔는지 비교.
	guard lhs.caseInsensitiveCompare(rhs) == .orderedSame else {
		return false
	}
	
	// 딕셔너리 해당 키값에 대한 value 비교.
	guard let lv = a[lhs], let rv = b[rhs], lv.caseInsensitiveCompare(rv) == .orderedSame else {
		return false
	}
	
	return true
}
// -> 딕셔너리를 클로져 이용해서 비교할 때에는, 딕셔너리가 정렬되어있지 않음을 꼭 기억하자.




/*:
 # Finding Elements
 */

// 검색을 구현 - 클로져가 필요. (1. 2. 3.)

var words = ["A": "Apple", "B": "Banana", "C": "City"]

// - 검색기능을 구현하는 메서드에 사용하는 클로져의 형식은 대부분 동일하다. 키와 값이 저장되어있는 튜플을 파라미터로 받고, true 또는 false를 리턴한다.

// 검색에 필요한 클로져를 별도의 상수로 저장하기.
let c: ((String, String)) -> Bool = {
	$0.0 == "B" || $0.1.contains("i") // (String, String) 튜플의 0번째 인덱스(키)가 B이거나, Value가 i를 가지고 있다면 True를 리턴하겠다.
}


words.contains(where: c) // 클로져 위치에 c를 전달. 존재하기 떄문에 true가 리턴.

let r = words.first(where: c) // 리턴형이 옵셔널 튜플인 메서드이다. 없으면 nil을 리턴. 있으면 key,value 담은 옵셔널 튜플을 리턴. -> 또한, 딕셔너리는 정렬 안되었으므로 first로 하면 실행할때마다 나오는 결과값이 다르다.
r?.key // C
r?.value // City

// 클로져에서 트루를 리턴하는 요소만 따로모아서, 딕셔너리를 다시 만들어준다.
words.filter(c) // ["C": "City", "B": "Banana"]














