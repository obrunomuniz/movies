//
//  TabBarViewController.swift
//  Movies
//
//  Created by Bruno Teixeira Muniz Rocha on 20/06/20.
//  Copyright © 2020 Bruno Teixeira Muniz Rocha. All rights reserved.
//

import UIKit

enum TabBarItem {
    case discover, /* favorites,*/ search

    var title: String {
        switch self {
        case .discover  : return "Filmes populares"
//        case .favorites : return "Favoritos"
        case .search    : return "Buscar"
        }
    }
}

final class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabBar()
    }

    private func configureTabBar() {
        let discoverNavController = UINavigationController(rootViewController: DiscoverTableVC())
        //let favoritesNavController = UINavigationController(rootViewController: FavoritesTableVC())
        let searchNavController = UINavigationController(rootViewController: SearchTableVC())

        discoverNavController.tabBarItem = UITabBarItem(title: TabBarItem.discover.title,
                                                        image: Image.by(assetId: .tabBarDiscoverNormal),
                                                        selectedImage: Image.by(assetId: .tabBarDiscoverSelected))

//        favoritesNavController.tabBarItem = UITabBarItem(title: TabBarItem.favorites.title,
//                                                         image: Image.by(assetId: .tabBarFavoritesNormal),
//                                                         selectedImage: Image.by(assetId: .tabBarFavoritesSelected))

        searchNavController.tabBarItem = UITabBarItem(title: TabBarItem.search.title,
                                                      image: Image.by(assetId: .tabBarSearchNormal),
                                                      selectedImage: Image.by(assetId: .tabBarSearchSelected))

        viewControllers = [discoverNavController, /*favoritesNavController,*/ searchNavController]
    }
}
