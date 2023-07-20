//
//  Item.swift
//  StartingPoint
//
//  Created by Clarissa  on 12/07/23.
//

import Foundation

struct Items: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
}

struct History: Identifiable {
    let id = UUID()
    let startPoint: String
    let destination: String
}


let items = [
    Items(imageName: "bookmark", title: "LKC"),
    Items(imageName: "bookmark", title: "Tomoro Coffee"),
    Items(imageName: "bookmark", title: "Kantin"),
    Items(imageName: "bookmark", title: "Admission")
]

// I'm so sorry ges idk what im doing
struct Histories {
    static let historyL = [
        History(startPoint: "Kantin", destination: "GOR"),
        History(startPoint: "Drop Off", destination: "Kantin"),
        History(startPoint: "SSC", destination: "LKC")
    ]
}

