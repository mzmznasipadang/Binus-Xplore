//
//  Item.swift
//  StartingPoint
//
//  Created by Clarissa  on 12/07/23.
//

import Foundation

struct Item: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
}
