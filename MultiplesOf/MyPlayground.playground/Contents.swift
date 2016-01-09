//: Playground - noun: a place where people can play

import Cocoa


func multiplesOf(number: Int) -> [String] {
	
	var multiples = [Int]()

	for i in 1...10 {
		multiples.append( i * number )
	}
	
	return multiples.map { String($0) }
}

multiplesOf( 8 )
