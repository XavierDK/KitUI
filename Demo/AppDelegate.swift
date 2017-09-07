//
//  AppDelegate.swift
//  Demo
//
//  Created by Xavier De Koninck on 06/09/2017.
//  Copyright © 2017 PagesJaunes. All rights reserved.
//

import UIKit
import NeoCoordinator

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?
  var appCoordinator: Coordinator!
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    
    window = UIWindow()
    
    let navigationController = UINavigationController()
    window?.rootViewController = navigationController
    
    appCoordinator = AppCoordinator(navigationController: navigationController, parentCoordinator: nil, context: Context(value: ()))
    try! appCoordinator.start(withCallback: nil)
    
    window?.makeKeyAndVisible()
    
    return true
  }
}

