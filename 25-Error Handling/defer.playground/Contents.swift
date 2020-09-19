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
 # defer Statements
 ![defer](defer.png)
 */

func processFile(path: String) {
	print("1")
	let file = FileHandle(forReadingAtPath: path)
	
	// Process
	
	// 항상 함수가 종료되는 시점에 호출된다. 아무리 복잡하더라도, 언제나 closeFile은 호출된다.
	defer {
		print("2")
		file?.closeFile() // file을 로딩한다음, 필요한 작업을하고 파일을 닫는다. 파일처리에서는 닫는게 중요하다. 코드가 길어지면, 파일을 닫지 않았는데 함수가 종료되는 경우가 있다.
	}
	
	// 파일을 닫지않은 상태에서 함수가 종료될 수도 있다. 이렇게되면 문제가 생길 수 있다.
	if path.hasSuffix(".jpg") {
		print("3")
		return
	}
	
	defer {
		print("5")
	}
	
	print("4")
}

processFile(path: "file.jpg") // 1, 3, 2. defer가 항상 실행되는 것은 아니다. 반드시 defer는 한번은 호출이 되어있어야, 실행이된다. 그래서 보통 scope 시작부분에 구현함.



func testDefer() {
	defer {
		print(1)
	}
	defer {
		print(2)
	}
	defer {
		print(3)
	}
}

testDefer() // defer문은 순서대로 예약이 된다. 결국 3,2,1로 호출. 헷갈리니 웬만하면 하나의 defer문만 사용하는것이 좋다.














