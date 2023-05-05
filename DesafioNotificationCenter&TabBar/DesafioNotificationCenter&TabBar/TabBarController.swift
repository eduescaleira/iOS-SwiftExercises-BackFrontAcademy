//
//  TabBarController.swift
//  DesafioNotificationCenter&TabBar
//
//  Created by Eduardo Escaleira on 05/05/23.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()

    }
    
    private func setupTabBar() {
        tabBar.isTranslucent = true
        tabBar.tintColor = UIColor.white.withAlphaComponent(0.7)
        
        let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithDefaultBackground()
        tabBarAppearance.backgroundColor = .systemCyan
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
        
        guard let items = tabBar.items else { return }

        //MARK: - Tab Bar Itens
        items[0].title = "TableView"
        items[1].title = "Add Itens"
    
        //MARK: - Tab bar Images
        items[0].image = UIImage(systemName: "table")
        items[1].image = UIImage(systemName: "person.crop.circle.fill.badge.plus")
        
    }
    



}
