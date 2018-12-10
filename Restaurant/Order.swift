//
//  Order.swift
//  Restaurant
//
//  Created by Melle Meewis on 03/12/2018.
//  Copyright © 2018 Melle Meewis. All rights reserved.
//

import Foundation

struct Order: Codable {
    var menuItems: [MenuItem]
    
    init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
}
