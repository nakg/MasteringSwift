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
 # Comparing Arrays
 */

let a = ["A", "B", "C"]
let b = ["a", "b", "c"]

// 개별요소 및 저장순서 비교.
a == b // false.

a.elementsEqual(b) // 위와 통일. false.

a.elementsEqual(b) { (lhs, rhs) -> Bool in
	return lhs.caseInsensitiveCompare(rhs) == .orderedSame
} // 대소문자 무시 비교. true.













/*:
 # Finding Elements
 */
// 검색

let nums = [1, 2, 3, 1, 4, 5, 2, 6, 7, 5, 0]

// 특정요소가 존재하는지 확인.
nums.contains(1) // true.
nums.contains(8) // false.

// 짝수가 포함되어있는지 확인해보자.
nums.contains { (n) -> Bool in
	return n % 2 == 0
} // true.


// 직접 검색.
nums.first { (n) -> Bool in
	return n % 2 == 0
} // 가장먼저 true를 리턴하는 요소를 return해준다. 2가 리턴.

nums.firstIndex { (n) -> Bool in
	return n % 2 == 0
} // 가장 먼저 true를 리턴하는 요소의 Index를 리턴한다. 1이 리턴.

nums.firstIndex(of: 1) // 가장먼저 1이 나올 때의, Index를 리턴. 0.
nums.lastIndex(of: 1) // 뒤에서부터 1이나올떄의, Index를 리턴. 3.















/*:
 # Sorting on Array
 */
// 정렬.

// 1. 직접정렬.
nums.sorted() // 오름차순으로 정렬해버림. 배열을 새로리턴해서 nums는 안바뀜.
nums

// 내림차순 정렬.
// 1. 클로져를 통해, 정렬코드 구현. 항상 좌변이 우변보다 크게 하는걸 만족해야하게 만드나 보네.
nums.sorted { (a, b) -> Bool in
	return a > b
}
// 2. 인벌스
nums.sorted().reversed() // reversedCollection을 리턴한다. 배열의 메모리를 공유하면서, 역순으로 정렬된걸 리턴해준다.
// 역순으로 정렬된 새로운 배열을 생성하고 싶다면, 배열생성자로 만든다.
[Int](nums.sorted().reversed())

// 가변배열의 정렬.
var mutableNums = nums
mutableNums.sort() // 배열을 직접 정렬해버림.
mutableNums.reverse() // 리턴형 없다. 그냥 역순처리.

// 특정 위치의 요소를 교체.
mutableNums
mutableNums.swapAt(0, 1) // index로 교체.

// 랜덤으로 섞기.
mutableNums.shuffle()




















