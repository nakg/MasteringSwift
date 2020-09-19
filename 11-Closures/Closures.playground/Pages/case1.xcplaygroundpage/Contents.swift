//: [Previous](@previous)

import Foundation

let ciga = [
	"Malboro Light", "Malboro Red", "Malboro Ice Blast", "Dunhill Light",
	"Dunhill coffee", "Dunhill Frost", "Dunhill Africa", "Esse Light"
]

let dunhills = ciga.filter({ (cigaName: String) -> Bool in
	return cigaName.contains("Dunhill")
})

print(dunhills)



let products = [
   "MacBook Air", "MacBook Pro",
   "iMac", "iMac Pro", "Mac Pro", "Mac mini",
   "iPad Pro", "iPad", "iPad mini",
   "iPhone Xs", "iPhone Xr", "iPhone 8", "iPhone 7",
   "AirPods",
   "Apple Watch Series 4", "Apple Watch Nike+"
]

var proModels = products.filter({ (name: String) -> Bool in
	return name.contains("Pro")
})



print(proModels)

print(proModels.sorted()) // 문자에 할당된 코드를 보고 배열의 순서를 바꿈. 대소문자 구분.

// 대소문자 관계 없는 오름차순의, sortby 메서드를 만들어보자.
proModels.sort(by: { (lhs: String, rhs: String) -> Bool in
	return lhs.caseInsensitiveCompare(rhs) == .orderedAscending
})

print(proModels)



proModels.contains(where: { (name: String) -> Bool in
	return name.contains("Pro")
})

proModels.contains { (name) -> Bool in
	return name.contains("Mac")
}


var tempFlug = proModels.contains {
	$0.contains("Mac")
}










//: [Next](@next)
