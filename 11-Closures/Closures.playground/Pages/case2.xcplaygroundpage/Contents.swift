//: [Previous](@previous)

import Foundation


print("Start")

// return키로 자동완성 안사용하고 만든 클로져.
DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
	print("End")
})

// 자동완성의 도움을 받음. 최대한 단순한 코드로 입력된다. return키로 최대한 간략하게 Syntax Optimization을 한 코드가 나온다. (문법 최적화)
DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
	print("End")
}
