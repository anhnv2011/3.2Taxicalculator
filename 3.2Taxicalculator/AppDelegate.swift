//
//  AppDelegate.swift
//  3.2Taxicalculator
//
//  Created by MAC on 6/22/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = TaxiViewController()
        window?.makeKeyAndVisible()
        
        return true
    }

   


}

