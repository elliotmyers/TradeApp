//
//  SceneDelegate.swift
//  TradeApp
//
//  Created by Raiden Yamato on 13.05.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        
        let navTradeViewController = createTradeViewController()
        
        let tabBarController = createTabBarController()
        tabBarController.viewControllers = [createTopViewController(), navTradeViewController]
        
        window.rootViewController = tabBarController
        window.makeKeyAndVisible()
        self.window = window
    }
    
    
    func createTabBarController() -> UITabBarController {
        let tabBarController = UITabBarController()
        
        UITabBar.appearance().backgroundColor = UIColor(red: 18/255 , green: 22/255, blue: 41/255, alpha: 1)
        
         
        tabBarController.tabBar.tintColor = .green
        tabBarController.tabBar.unselectedItemTintColor = .lightGray

        return tabBarController
    }
    
    func createTradeViewController() -> UINavigationController {
        let tradeViewController = TradeViewController()
        tradeViewController.title = "Trade"
        let image = scaleImage(image: UIImage(named: "Trade_Icon_03jmws")!, targetSize: CGSize(width: 25, height: 25))
        
        
        tradeViewController.tabBarItem = UITabBarItem(title: "Trade", image: image, tag: 0)
        let navigationController = UINavigationController(rootViewController: tradeViewController)
        return navigationController
    }

        func createTopViewController() -> TopViewController {
            let topViewController = TopViewController()
            topViewController.title = "Trade"
            let image = scaleImage(image: UIImage(named: "to_top_icon_154709")!, targetSize: CGSize(width: 25, height: 25))
            
            
            topViewController.tabBarItem = UITabBarItem(title: "Top", image: image, tag: 1)
        return topViewController
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

