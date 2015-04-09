//
//  AppDelegate.swift
//  MightySwift
//
//  Created by Rodel Medina on 4/8/15.
//  Copyright (c) 2015 Rodel Medina. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window            = UIWindow()

    lazy var homeController: HomeController = {
        var ctrl = HomeController()
        ctrl.title = "Home"
        return ctrl
    }()

    lazy var betsController: BetsController = {
        var ctrl = BetsController()
        ctrl.title = "Bets"
        return ctrl
        }()

    lazy var leadersController: LeadersController = {
        var ctrl = LeadersController()
        ctrl.title = "Leaders"
        return ctrl
        }()

    lazy var homeNavigation: UINavigationController = {
        var ctrl = UINavigationController()
        ctrl.title = "Home"
        return ctrl
        }()

    lazy var betsNavigation: UINavigationController = {
        var ctrl = UINavigationController()
        ctrl.title = "Bets"
        return ctrl
        }()

    lazy var leadersNavigation: UINavigationController = {
        var ctrl = UINavigationController()
        ctrl.title = "Leaders"
        return ctrl
        }()

    var mainTabBar        = UITabBarController()

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        homeNavigation.viewControllers    = [homeController]
        betsNavigation.viewControllers    = [betsController]
        leadersNavigation.viewControllers = [leadersController]

        mainTabBar.viewControllers = [homeNavigation, betsNavigation, leadersNavigation]

        window.frame = UIScreen.mainScreen().bounds
        window.rootViewController = mainTabBar
        window.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
    }

    func applicationDidEnterBackground(application: UIApplication) {
    }

    func applicationWillEnterForeground(application: UIApplication) {
    }

    func applicationDidBecomeActive(application: UIApplication) {
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

