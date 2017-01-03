//
//  UserDefaultsExtension.swift
//  Templates
//
//  Created by Joe Edwards on 1/3/17.
//  Copyright © 2017 HanekeDesign. All rights reserved.
//

import Foundation

//For Setting UserDefaults throughout your app. Add The Keys that you set up to this enum.
extension UserDefaults {
	
	enum Key : String { case AuthToken }
	
	class func check(for key:Key) -> Any? {
		
		let value = standard.value(forKey: key.rawValue)
		
		return value
		
	}
	
	class func removeObject(for key:Key) {
		
		standard.removeObject(forKey: key.rawValue)
		standard.synchronize()
		
	}
	
}
