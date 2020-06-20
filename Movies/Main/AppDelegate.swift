//
//  AppDelegate.swift
//  Movies
//
//  Created by Bruno Teixeira Muniz Rocha on 20/06/20.
//  Copyright © 2020 Bruno Teixeira Muniz Rocha. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        UINavigationBar.appearance().tintColor = .black
        UIBarButtonItem.appearance().setBackButtonTitlePositionAdjustment(UIOffset(horizontal: -1000, vertical: 0), for: .default)
        UITabBar.appearance().tintColor = .black

        //Initital Window and root View Controller
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        window?.makeKeyAndVisible()

        window?.rootViewController = TabBarViewController()
        
        return true
    }
}
