//
//  TabBarViewController.swift
//  OrangeMovies
//
//  Created by GiselaCamacho on 12/11/22.
//

import UIKit

class TabBarViewController: UIViewController, UITabBarControllerDelegate {
    
    var tabBarOrange: UITabBarController!

    override func viewDidLoad() {
        super.viewDidLoad()
        createTabBar()
        
    }
    
    func createTabBar() {
        tabBarOrange = UITabBarController()
        tabBarOrange.delegate = self
        tabBarOrange.tabBar.backgroundColor = .black
        tabBarOrange.tabBar.tintColor = .white
        tabBarOrange.tabBar.unselectedItemTintColor = .yellow
        
        let firstViewController = HomeViewController()
        firstViewController.title = "Home"
        firstViewController.tabBarItem.image = UIImage(systemName: "house.circle.fill")
        
        let secondViewController = MoviesViewController()
        secondViewController.title = "Movies"
        secondViewController.tabBarItem.image = UIImage(named: "camera")
        
        let thirdViewController = SignInViewController()
        thirdViewController.title = "SignIn"
        thirdViewController.tabBarItem.image = UIImage(systemName: "gamecontroller.fill")
        
        let FourthViewController = UserViewController()
        FourthViewController.title = "User"
        FourthViewController.tabBarItem.image = UIImage(systemName: "person.fill")
        
        tabBarOrange.viewControllers = [firstViewController, secondViewController, thirdViewController, FourthViewController]

        self.view.addSubview(tabBarOrange.view)
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("tabBar controller \(tabBarController.selectedIndex)")
    }
}
