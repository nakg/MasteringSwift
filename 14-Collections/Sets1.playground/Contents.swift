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
 # Set
 ## Set Type
 ![set-type](set-type.png)
 */




let arr = [1, 2, 2, 3, 3, 3] // 이건 배열이다. [1, 2, 2, 3, 3, 3]
arr.count

let set: Set<Int> = [1, 2, 2, 3, 3, 3] // 이건 배열이다. {2, 3, 1}
set.count



/*:
 ## Inspecting a Set
 */
// 요소의 확인.
set.count
set.isEmpty




/*:
 ## Testing for Membership
 */
// 요소가 포함되어있는지 확인. set에서 많이 사용함. - 해싱알고리즘을 사용하기 때문에, 배열보다 빠름.
set.contains(1)






/*:
 ## Adding and Removing Elements
 */
// 추가 및 삭제
var words = Set<String>() // 생성

// set의 insert 메서드는, 튜플이 리턴된다. 요소가 저장되었다면 inserted에 true가, memberAfterInsert에 추가된 값이 리턴됨.
var insertResult = words.insert("Swift") // Tuple 리턴.
insertResult.inserted // true
insertResult.memberAfterInsert // Swift

insertResult = words.insert("Swift") // Tuple Return.
insertResult.inserted // false. 이미 있다.
insertResult.memberAfterInsert // Swift


// update method : upsert 방식으로. 존재하지 않는다면 추가. 있다면 대체. 작업의 결과를 optional string으로 리턴.
var updateResult = words.update(with: "Swift") // 값이 리턴. Update 되었다는 뜻.
updateResult // Swift
updateResult.hashValue
updateResult = words.update(with: "Apple") // nil이 리턴. nil이 리턴되면, insert 했다는 뜻.
updateResult // nil


// 뭐가 업데이트 된다는거야? 해쉬값!
updateResult = words.update(with: "Swift")
updateResult.hashValue
var value = "Swift"
value.hashValue // -8032892300449101005

updateResult.hashValue // -8736332765145456337
updateResult = words.update(with: value) // 지금 value 변수에 저장된 "Swift"는 이미 Set에 저장되어 있다. 새로운 문자열로 교체한다음에, 교체된 문자열을 리턴해준다.
updateResult
updateResult.hashValue // -8736332765145456337

value = "Hello"
value.hashValue // -5975321670726274672

updateResult = words.update(with: value)
updateResult

// -> 동일한 변수를 파라미터로 전달하더라도(value), 해쉬값이 달라서 서로 다른 변수로 인식한다.


// 해쉬값이 고정되어있는 구조체를 만들어보자.
struct SampleData: Hashable {
	var hashValue: Int = 123
	var data: String
	
	init(_ data: String) {
		self.data = data
	}
	
	// 구조체의 데이터는 data 항목에 저장되는데, 구조체를 비교할 때 데이터를 비교하지 않고 이의 해쉬값을 비교하도록 구현.
	static func ==(lhs: SampleData, rhs: SampleData) -> Bool {
		return lhs.hashValue == rhs.hashValue
	}
}


var sampleSet = Set<SampleData>()

var data = SampleData("Swift")
data.hashValue // 123

var r = sampleSet.insert(data)
r.inserted // true.
r.memberAfterInsert // SampleData
sampleSet // {{hashValue 123, data "Swift"}}

// data 바꾸었지만, hash값은 그대로이다. -> 이러면 hash값이 동일해서 추가가 되지 않는다. insert로는 Hello를 추가할 수 없다. 이때 사용하는게 update이다.
data.data = "Hello"
data.hashValue // 123
r = sampleSet.insert(data)
r.inserted // false
r.memberAfterInsert // SampleData
sampleSet // {{hashValue 123, data "Swift"}}
// -> insert 메서드로는, 동일한 해쉬값을 가진 것을 추가할 수 없다.

// 인스턴스가 업데이트 되었을 때, set에 저장되어있는 동일한 요소에 반영하기 위하여 사용한다.
sampleSet.update(with: data)
sampleSet // {{hashValue 123, data "Hello"}}




// 삭제
words
words.remove("Swift") // swift 리턴. 1개의 요소 삭제.
words

words.remove("Ghost") // nil이 리턴. 존재하지 않음. 리턴값을 통해 값이 있었는지 파악가능.

words.removeAll()
words

var sett = Set<String>()

var machine = sett.update(with: "Swift")
machine.hashValue
machine = sett.update(with: "Swift")
machine.hashValue
var testvalue = "Swift"

testvalue.hashValue
machine = sett.update(with: testvalue)
machine.hashValue

machine = sett.update(with: testvalue)
machine.hashValue

testvalue = "test"

testvalue.hashValue
machine = sett.update(with: testvalue)
machine.hashValue
print("hi")

