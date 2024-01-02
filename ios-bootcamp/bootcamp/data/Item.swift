//
//  Item.swift
//  ios-bootcamp
//
//  Created by zhifu.zhang on 2024/1/2.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
