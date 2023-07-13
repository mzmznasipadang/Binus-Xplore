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
    Items(imageName: "building", title: "A0701"),
    Items(imageName: "cup.and.saucer", title: "Tomoro Coffee"),
    Items(imageName: "cup.and.saucer", title: "Dapur Nieta"),
    Items(imageName: "cup.and.saucer", title: "Disrupt")
]

// I'm so sorry ges idk what im doing
struct Histories {
    static let historyL = [
        History(startPoint: "Canteen", destination: "Auditorium"),
        History(startPoint: "Lobby", destination: "Canteen"),
        History(startPoint: "Auditorium", destination: "Library")
    ]
}
