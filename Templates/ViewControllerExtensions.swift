//
//  ViewControllerExtensions.swift
//  Templates
//
//  Created by Joe Edwards on 1/3/17.
//  Copyright © 2017 HanekeDesign. All rights reserved.
//

import UIKit


//Presenting Alerts
extension UIViewController {
	
	func presentSimpleAlert(withTitle title:Title, andMessage message:Message) {
		
		dispatch(dispatch_get_main_queue()) {
			
			let alertVC = UIAlertController(title: title, message: message, preferredStyle: .Alert)
			let cancel = UIAlertAction(title: "Ok", style: .Cancel, handler: nil)
			alertVC.addAction(cancel)
			
			self.presentViewController(alertVC, animated: true, completion: nil)
			
		}
		
	}
	
}
