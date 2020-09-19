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
 # Stored Properties
 ![syntax](syntax1.png)
 */

// 클래스 만들고, 저장속성 선언.
class Person {
	let name: String = "John Doe" // 변경 붉.
	var age: Int = 33 // 변경 가능.
}





/*:
 # Explicit Member Expression
 ![syntax](syntax2.png)
 */
// 새로운 인스턴스를 만들고, 값을 확인해보자.
let p = Person()
p.name // John Doe
p.age // 33
// -> 점문법. Exlpicit Member Expression

p.age = 30 // 값 바꾸기. var여서 바꿀 수 있겠지.













/*:
 # Lazy Stored Properties
 ![lazy](lazy.png)
 ![lazy-syntax](lazy-syntax.png)
 */
struct Image {
	init() {
		print("new image")
	}
}

struct BLogPost {
	let title: String = "Title"
	let content: String = "Content"
	lazy var attachment: Image = Image() // 이미지는 바이너리 형태로 보통 저장되어있어서, 크기가 위 스트링보다 크다.
	
	let date: Date = Date() // 현재 날짜로 초기화.
	lazy var formattedDate: String = {
		let f = DateFormatter()
		f.dateStyle = .long
		f.timeStyle = .medium
		return f.string(from: date)
	}() // -> 괄호가 있어야한다. 괄호로 클로져를 이시점에 호출해버려서, 클로져의 리턴형인 String으로 이시점에 초기화한다. 그런데 Date()로 이미 date는 초기화된 상태이다.. lazy var가 아니었으면 date와 동시에 초기화되기 때문에 date가 없어서 접근이 불가하다. 저장 속성을 클로져로 초기화 할 때, 다른속성에 접근해야한다면 반드시 lazy var로 선언해야한다.
}

var post = BLogPost() // 인스턴스 초기화시에, new image가 출력이 된다. 바로 Image가 초기화되므로.
// -> 매번 인스턴스를 생성할 때 마다, 파일이나 네트워크에서 이미지를 가져온다음 메모리공간에 복사해야하기에 오버헤드가 발생한다. aatachment를 항상 사용한다면 괜찮지만, 안쓰면 불필요하다.

post.title // Title
post.attachment // 리터럴이 아닌 생성자로 호출하고 있다. 이런식으로 해도 된다. 표현식의 리턴값이 속성형식과 동일하기만 하면 된다.







