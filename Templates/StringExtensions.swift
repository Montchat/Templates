//
//  StringExtensions.swift
//  Templates
//
//  Created by Joe Edwards on 1/3/17.
//  Copyright © 2017 HanekeDesign. All rights reserved.
//

import Foundation

//Removing Characters
//**** NEED TO ADD 

extension String {
//Formatting Phone Numbers 
//**** NEED TO ADD
	
}




//Validating
extension String {
	
	internal func validateEmail() -> Bool {
		
		let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
		let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
		return emailPredicate.evaluate(with: self)
		
	}
	
	var decimalDigits: String {
		return components(separatedBy: NSCharacterSet.decimalDigits.inverted).joined(separator: "")
		
	}
	
	var formattedAsPhoneNumber: String {
		var result = ""
		if characters.count < 3 {
			result = "(" + self
		}
		else if characters.count < 6 {
			let numberIndex = index(startIndex, offsetBy: 3)
			result = ""
			//MARK: NEED TO FINISH
			
		}
		else {
			let firstBreak = index(startIndex, offsetBy: 3)
			let secondBreak = index(startIndex, offsetBy: 6)
			//MARK: NEED TO FINISH
			result = ""
			
		}
		return result
	}
	
}
