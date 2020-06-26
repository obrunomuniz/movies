//
//  UIView+.swift
//  Movies
//
//  Created by Bruno Teixeira Muniz Rocha on 26/06/20.
//  Copyright © 2020 Bruno Teixeira Muniz Rocha. All rights reserved.
//

import UIKit
 
extension UIView {

    /// Adds the set of subviews to current view.
    ///
    /// - Parameter subviews: The set of subviews.
    func add(subviews: UIView...) {
        subviews.forEach(addSubview)
    }
}
