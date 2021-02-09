//
//  UIExtensions.swift
//  ITP344-Spring2021-W4
//
//  Created by Jack Xu on 2/8/21.
//

import UIKit

extension UIView {
    
    convenience init(huggingPriority: UILayoutPriority, axis: NSLayoutConstraint.Axis) {
        self.init()
        heightAnchor.constraint(equalToConstant: 10).isActive = true
        setContentHuggingPriority(huggingPriority, for: axis)
    }
    
    convenience init(compressionResistancePriority: UILayoutPriority, axis: NSLayoutConstraint.Axis) {
        self.init()
        setContentCompressionResistancePriority(compressionResistancePriority, for: axis)
    }
    
}
