//
//  IntermediaryModels.swift
//  Restaurant
//
//  Created by Melle Meewis on 03/12/2018.
//  Copyright © 2018 Melle Meewis. All rights reserved.
//

import Foundation

struct Categories: Codable {
    let categories: [String]
}

struct PreperationTime: Codable {
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey {
        case prepTime = "preperation_time"
    }
}
