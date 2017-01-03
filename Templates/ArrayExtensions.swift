//
//  ArrayExtensions.swift
//  Templates
//
//  Created by Joe Edwards on 1/3/17.
//  Copyright © 2017 HanekeDesign. All rights reserved.
//

import Foundation


//removing objects from certain elements
extension Array where Element: Equatable {
	
	mutating func remove(object: Element) {
		
		if let index = index(of: object) {
			remove(at: index)
		}
		
	}
	
}
extension Array {
	var last: Element  {
		return self[endIndex - 1]
	}
}
