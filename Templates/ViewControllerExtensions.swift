//
//  ViewControllerExtensions.swift
//  Templates
//
//  Created by Joe Edwards on 1/3/17.
//  Copyright © 2017 HanekeDesign. All rights reserved.
//

import UIKit

//Activity Indicators and Blur Views
//**need to add

//Presenting Alerts
extension UIViewController {
	
	internal func presentSimpleAlert(with title:Title, and message:Message) {
		
		DispatchQueue.main.async {
			let alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
			let cancel = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
			alertVC.addAction(cancel)
			
			self.present(alertVC, animated: true, completion: nil)
			
		}
		
	}
	
}

//Presenting Storyboards & View Controllers
extension UIViewController {
	
	//Use this enum structure to store all of your storyboard names. Will save you time down the line if you add them here, then throughout your app.
	enum StoryBoardName : String {
		case Main = "Main"
		
	}
	
	internal func presentStoryboard(with name: StoryBoardName) {
		
		guard let storyboard = UIStoryboard(name: name.rawValue, bundle: nil).instantiateInitialViewController() else { return }
		
		present(storyboard, animated: true, completion: nil)
		
	}
	
}

