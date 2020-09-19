//
//  Copyright (c) 2019 KxCoding <kky0317@gmail.com>
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
 # Result Type
 */

enum NumberError: Error {
   case negativeNumber
   case evenNumber
}

enum AnotherNumberError: Error {
   case tooLarge
}

func process(oddNumber: Int) throws -> Int {
   guard oddNumber >= 0 else {
      throw NumberError.negativeNumber
   }
   
   guard !oddNumber.isMultiple(of: 2) else {
      throw NumberError.evenNumber
   }
	
	guard oddNumber < 1000 else {
		throw AnotherNumberError.tooLarge
	}
   
   return oddNumber * 2
}
//
//do {
//   let result = try process(oddNumber: 1)
//   print(result)
//} catch let myErr as NumberError { // 프레임워크로 함수가 구현되어있었다면? 에러처리로 어떤 프로토콜을 처리하였는지 알기가 어렵다.. 여기선 NumberError
//	switch myErr {
//	case .negativeNumber:
//		print("negative number")
//	case .evenNumber:
//		print("even Number")
//	}
//} catch {
//   print(error.localizedDescription)
//}

let result = Result { try process(oddNumber: 1) } // Result타입을 초기화하여 저장시킨다. Result타입은 열거형(success, failure)를 가짐. 이를 스위치문 처리해보자.

// 아래 코드는 do-catch문에 비해서,   정상적으로 실행되면 success와 매칭되고 데이터 사용가능. error가 전달되면 failure케이스와 매칭되고 전달된 에러는 연관값을 통해서 얻을 수 있다.
switch result {
case .success(let data):
	print(data)
case .failure(let error):
	print(error.localizedDescription)
}





// Result타입은 열거형으로, 성공했을때의 타입과 에러형식을 명시해주어야함.
func processResult(oddNumber: Int) -> Result<Int, NumberError> {
   guard oddNumber >= 0 else {
	return Result.failure(NumberError.negativeNumber) // 이렇게 작성해도 되지만, 컴파일러가 타입을 추론해주기에 .failure(.negativeNumber)도 가능하다.
   }
   
   guard !oddNumber.isMultiple(of: 2) else {
	return .failure(.evenNumber)
   }
	
//	guard oddNumber < 1000 else {
//		throw AnotherNumberError.tooLarge
//	}
   
	return .success(oddNumber * 2)
}
// 이전 함수와 비교해보면 에러를 직접전달하는게 아니라, 연관값으로 리턴한다. 다시 말해서, 함수를 thrwoing으로 선언하지 않는다. 함수 처리방식 에러 처리 방식이 달라짐.
let result2 = processResult(oddNumber: 1)
switch result2 {
case .success(let data):
	print(data)
case .failure(let error):
	print(error.localizedDescription)
}

//
if let result = try? result2.get() { // 성공하면 결과값을 리턴하고, 실패하면 에러를 던지는 Thorwing 메서드.
	print(result) // 작업이 성공한 경우에만 실행.
}









