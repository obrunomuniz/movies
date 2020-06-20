//
//  UIImageView+.swift
//  Movies
//
//  Created by Bruno Teixeira Muniz Rocha on 20/06/20.
//  Copyright © 2020 Bruno Teixeira Muniz Rocha. All rights reserved.
//

import UIKit

extension UIImageView {
    
    /// Convinience method for initialization with specified content mode.
    ///
    /// - Parameters:
    ///   - image: The inititial image.
    ///   - contentMode: Options to specify how a view adjusts its content when its size changes.
    convenience init(_ image: UIImage? = nil, contentMode: UIView.ContentMode) {
        self.init(image: image)
        self.contentMode = contentMode
    }
}
