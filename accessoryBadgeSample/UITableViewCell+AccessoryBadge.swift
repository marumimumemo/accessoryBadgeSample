//
//  UITableViewCell+AccessoryBadge.swift
//  accessoryBadgeSample
//
//  Created by satoshi.marumoto on 2020/04/16.
//  Copyright © 2020 satoshi.marumoto. All rights reserved.
//

import UIKit

extension UITableViewCell {
    
    /// セルにバッジをつける
    func setAccessoryCountBadge(count: Int) {
        
        if count == 0 {
            self.accessoryView = nil
            return
        }
        
        let accessoryBadge = UILabel()
        // 未読件数を取得する
        accessoryBadge.text = "\(count)"
        accessoryBadge.backgroundColor = .red
        accessoryBadge.textColor = .white
        accessoryBadge.font = .systemFont(ofSize: 15.0)
        accessoryBadge.textAlignment = .center
        accessoryBadge.layer.cornerRadius = 10
        accessoryBadge.clipsToBounds = true
        accessoryBadge.sizeToFit()
        accessoryBadge.frame = .init(
            x: 0,
            y: 0,
            width: accessoryBadge.frame.height,
            height: accessoryBadge.frame.height
        )
        self.accessoryView = accessoryBadge
    }
    
    /// セルにバッジをつける
    func setAccessoryUnreadBadge() {
        
        let accessoryBadge = UILabel()
        accessoryBadge.backgroundColor = .red
        accessoryBadge.textAlignment = .center
        accessoryBadge.layer.cornerRadius = 8
        accessoryBadge.clipsToBounds = true
        accessoryBadge.sizeToFit()
        accessoryBadge.frame = .init(
            x: 0,
            y: 0,
            width: 15.0,
            height: 15.0
        )
        self.accessoryView = accessoryBadge
    }
    
}
