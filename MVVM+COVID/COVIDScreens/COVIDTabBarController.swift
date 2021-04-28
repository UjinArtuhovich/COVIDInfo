//
//  COVIDTabBarController.swift
//  MVVM+COVID
//
//  Created by Ujin Artuhovich on 3/16/21.
//

import UIKit

class COVIDTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.barTintColor = Colors().myPurple
        setUp()
    }
    
    func setUp() {
        let mainVC = createControllers(vc: COVIDMainViewController(), selected: "homeselected", unselected: "home")
        let VC = createControllers(vc: COVIDInfoViewController(), selected: "statselected", unselected: "stat")
        viewControllers = [mainVC, VC]
        guard let items = tabBar.items else { return }
        
        for item in items {
            item.imageInsets = UIEdgeInsets(top: 17,left: 0,bottom: 0,right: 0)
        }
        
    }
    
    
}
extension COVIDTabBarController {
    func createControllers(vc: UIViewController, selected: String, unselected: String) -> UINavigationController {
        let viewController = vc
        let nc = UINavigationController(rootViewController: viewController)
        nc.isNavigationBarHidden = true
        nc.tabBarItem.image = UIImage(named: unselected)
        nc.tabBarItem.selectedImage = UIImage(named: selected)
        return nc
    }
}
