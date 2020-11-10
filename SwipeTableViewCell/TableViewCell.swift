//
//  TableViewCell.swift
//  SwipeTableViewCell
//
//  Created by Владимир Коваленко on 06.11.2020.
//  Copyright © 2020 Vladimir Kovalenko. All rights reserved.
//

import UIKit
import SwipeCellKit
import MGSwipeTableCell

class TableViewCell: MGSwipeTableCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}

extension UITableViewCell {
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}
