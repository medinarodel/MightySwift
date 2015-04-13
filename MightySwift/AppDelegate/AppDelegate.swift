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

    var window: UIWindow?

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

    lazy var usersController: UsersController = {
        var ctrl = UsersController()
        ctrl.title = "Users"
        return ctrl
        }()

    lazy var menuController: MenuController = {
        var ctrl = MenuController()
        ctrl.title = "Menu"
        return ctrl
        }()

    lazy var homeNavigation: UINavigationController = {
        var ctrl = UINavigationController()
        ctrl.title = "Home"
        ctrl.tabBarItem.image = UIImage(named: "feeds")
        return ctrl
        }()

    lazy var betsNavigation: UINavigationController = {
        var ctrl = UINavigationController()
        ctrl.title = "Bets"
        ctrl.tabBarItem.image = UIImage(named: "bets")
        return ctrl
        }()

    lazy var leadersNavigation: UINavigationController = {
        var ctrl = UINavigationController()
        ctrl.title = "Leaders"
        ctrl.tabBarItem.image = UIImage(named: "leaders")
        return ctrl
        }()

    lazy var usersNavigation: UINavigationController = {
        var ctrl = UINavigationController()
        ctrl.title = "Users"
        ctrl.tabBarItem.image = UIImage(named: "users")
        return ctrl
        }()

    lazy var menuNavigation: UINavigationController = {
        var ctrl = UINavigationController()
        ctrl.title = "Menu"
        ctrl.tabBarItem.image = UIImage(named: "menu")
        return ctrl
        }()

    lazy var mainTabBar: UITabBarController = {
        var ctrl = UITabBarController()
        ctrl.tabBar.tintColor = Constants.Colors.colorThemeOrange;
        return ctrl
    }()

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        homeNavigation.viewControllers    = [homeController]
        betsNavigation.viewControllers    = [betsController]
        leadersNavigation.viewControllers = [leadersController]
        usersNavigation.viewControllers   = [usersController]
        menuNavigation.viewControllers    = [menuController]

        mainTabBar.viewControllers = [homeNavigation, betsNavigation, leadersNavigation, usersNavigation, menuNavigation]

        window = UIWindow(frame: UIScreen.mainScreen().bounds)

        if let window = window {
            window.rootViewController = mainTabBar
            window.makeKeyAndVisible()
        }

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

