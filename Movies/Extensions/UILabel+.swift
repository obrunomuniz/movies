//
//  UILabel+.swift
//  Movies
//
//  Created by Bruno Teixeira Muniz Rocha on 20/06/20.
//  Copyright © 2020 Bruno Teixeira Muniz Rocha. All rights reserved.
//

import UIKit

extension UILabel {

    /// Convenient factory method for UILabel declaration.
    ///
    /// - Parameters:
    ///   - font: Font of the label.
    ///   - color: Text color of the label.
    ///   - backgroundColor: Background color of the label.
    ///   - lines: Number of lines.
    ///   - alignment: Text alignment.
    convenience init(font: UIFont,
                     color: UIColor = .black,
                     backgroundColor: UIColor = .clear,
                     lines: Int = 0,
                     alignment: NSTextAlignment = .left) {
        self.init()

        self.font            = font
        self.textColor       = color
        self.backgroundColor = backgroundColor
        self.numberOfLines   = lines
        self.textAlignment   = alignment
    }
}
