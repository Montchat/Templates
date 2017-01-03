//
//  ArrayExtensions.swift
//  Templates
//
//  Created by Joe Edwards on 1/3/17.
//  Copyright © 2017 HanekeDesign. All rights reserved.
//

import Foundation

extension Array {
	var last: Element  {
		return self[endIndex - 1]
	}
}
