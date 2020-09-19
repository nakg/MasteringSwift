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
import Foundation
/*:
 # Comparing Sets
 */

var a: Set = [1, 2, 3, 4, 5, 6, 7, 8, 9]
var b: Set = [1, 3, 5, 7, 9]
var c: Set = [2, 4, 6, 8, 10]
let d: Set = [1, 7, 5, 9, 3]

a == b // a, b가 동일하지 않으면 false. false.

b == d // 정렬안되도 되므로, true.

// 메서드. elementsEqual은 순서대로 비교한다. Set은 정렬이 안되어있으므로, 실행할때마다 결과가 바뀐다. 기준을 동일시하고 비교해야함. 따라서, 동일성을 비교할 때에는 array가 좋다.
b.elementsEqual(d)

// 부분집합인지 확인하기.
a.isSubset(of: a) // a는 자신의 부분집합이기에, true.
a.isStrictSubset(of: a) // a는 a의 진 부분집합은 아니기에, false. 진 부분집합은 일치하지 않는 부분집합을 말한다.
b.isSubset(of: a) // b는 a에 다 포함된다. true.
b.isStrictSubset(of: a) // 진부분집합이다. true.

// 상위집합인지 확인하기.
a.isSuperset(of: a) // 상위집합. true.
a.isStrictSubset(of: a) // 진상위집합. false.
a.isSuperset(of: b) // true.
a.isStrictSuperset(of: b) // true.
a.isSuperset(of: c) // a는 c의 supertset이 아니다. false.

// 교집합 확인하기.
a.isDisjoint(with: b) // 두 집합이 교집합이면 false. 서로소면 true. -> false. 교집합이 있다.
a.isDisjoint(with: b) // 교집합이 있다. false.
b.isDisjoint(with: c) // 서로소집합. true.



/*:
 # Combining Sets
 */



// 집합 연산. 합. 교. 차. 여.
// 1. 합
a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]
// union - 원본은 변경시키지 않는다.
var result = b.union(c) // {7, 5, 10, 4, 3, 6, 9, 8, 1, 2}
// formunion - 원본을 변형시킨다.
b.formUnion(c)
b // {6, 7, 1, 9, 4, 3, 5, 8, 10, 2}


// 2. 교집합.
a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]
result = a.intersection(b) // 교집합. {3, 7, 9, 1, 5}
result = c.intersection(b) // Set([])

a.formIntersection(b)
a // {9, 1, 3, 5, 7}
b.formIntersection(c)
b // Set([])


// 3. 여집합. - 교집합을 제외.
a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]

result = a.symmetricDifference(b) // {8, 2, 6, 4}
result = c.symmetricDifference(b) // {2, 6, 10, 8, 4, 1, 5, 9, 7, 3}
a.formSymmetricDifference(b)
a // {2, 8, 4, 6}


// 4. 차집합.
a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]

// subtracting. - 원본변경 안함.
result = a.subtracting(b) // {6, 4, 8, 2}
// subtract. - 원본변경.
a.subtract(b)
a // {4, 6, 2, 8}
