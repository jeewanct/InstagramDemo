//
//  Home.swift
//  Instagram
//
//  Created by Jeevan chandra on 28/07/17.
//  Copyright © 2017 Jeevan chandra. All rights reserved.
//

import UIKit

class Home: UITabBarController{

    override func viewDidLoad() {
        super.viewDidLoad()

        let homeViewController = HomeContent()
        let home = UINavigationController(rootViewController: homeViewController)

        let searchViewController = Search()
        let search = UINavigationController(rootViewController: searchViewController)

        let addPhotosViewController = AddPhotos()
        let addPhotos = UINavigationController(rootViewController: addPhotosViewController)

        let favoritesViewController = Favourite()
        let favorites = UINavigationController(rootViewController: favoritesViewController)

        let userViewController = UserView()
        let user = UINavigationController(rootViewController: userViewController)


        viewControllers = [home, search, addPhotos, favorites, user]

        tabBar.layer.borderWidth = 0.5
        tabBar.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)

    }
}
