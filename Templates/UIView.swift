//
//  UIView.swift
//  Templates
//
//  Created by Joe Edwards on 1/3/17.
//  Copyright © 2017 HanekeDesign. All rights reserved.
//

import UIKit


//Animations
extension UIView {
	
	internal func animateWith(duration:Duration, and alpha: Alpha) {
		UIView.animate(withDuration: duration) { self.alpha = alpha }
		
	}

	func animateWith(duration:Duration, and alpha: Alpha, completion:@escaping () -> ()) {
		
		UIView.animate(withDuration: 0.33, animations: { 
			self.alpha = alpha
		}) { (bool) in
			completion()
			
		}
		
	}
	
	
}
