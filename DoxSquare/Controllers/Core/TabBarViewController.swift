//
//  TabBarViewController.swift
//  DoxSquare
//
//  Created by Robert Plummer on 1/16/21.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpControllers()
       
    }
    
    private func setUpControllers() {
        let home = HomeViewController()
        let explore = ExplorerViewController()
        let camera = CameraViewController()
        let notifications = NotificationsViewController()
        let profile = ProfileViewController()
        
        home.title = "Home"
        explore.title = "Explore"
        notifications.title = "Notifications"
        profile.title = "Profile"
       
        let nav1 = UINavigationController(rootViewController: home)
        let nav2 = UINavigationController(rootViewController: explore)
        let nav3 = UINavigationController(rootViewController: notifications)
        let nav4 = UINavigationController(rootViewController: profile)
        
        nav1.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "house"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "magnifyingglass"), tag: 2)
        camera.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "plus.rectangle"), tag: 3)
        nav3.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "bell"), tag: 4)
        nav4.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "person"), tag: 5)
        
        setViewControllers([nav1, nav2, camera, nav3, nav4], animated: false)
    }
    
}
