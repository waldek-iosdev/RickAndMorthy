//
//  Extensions.swift
//  RickAndMorthy
//
//  Created by Waldek on 14/01/2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
