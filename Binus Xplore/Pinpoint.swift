//
//  Pinpoint.swift
//  Binus Xplore
//
//  Created by Jessica Lynn on 16/07/23.
//

import Foundation
import SwiftUI

struct pinpoint: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let images: [String]
    let status: Bool
    let time: String
    let description: String
    let isSaved: Bool
    let floor: String
    let building: String
    let category: String
}

let pinpoints: [pinpoint] = [
    pinpoint(name: "Item 1", images: ["404", "SunibAnggrek", "auditorium"], status: true, time: "10:00 - 11.00", description: "Information center and facility to provide important announcements regarding student admission.", isSaved: false, floor: "Floor 2", building: "C Tower", category: "Office"),
    pinpoint(name: "Item 112", images: ["404", "SunibAnggrek", "auditorium"], status: false, time: "11:00 - 12.00", description: "Information center and facility to provide important announcements regarding student admission.", isSaved: true, floor: "Floor 3", building: "C Tower", category: "Office"),
    pinpoint(name: "Item 113", images: ["404", "SunibAnggrek", "auditorium"], status: false, time: "12:00 - 13.00", description: "Information center and facility to provide important announcements regarding student admission.", isSaved: true, floor: "Floor 4", building: "B Tower", category: "Class"),
    pinpoint(name: "Item 145", images: ["404", "SunibAnggrek", "auditorium"], status: true, time: "13:00 - 14.00", description: "Information center and facility to provide important announcements regarding student admission.", isSaved: true, floor: "Floor 4", building: "C Tower", category: "Class"),
    pinpoint(name: "Item 125", images: ["404", "SunibAnggrek", "auditorium"], status: false, time: "14:00 - 15.00", description: "Information center and facility to provide important announcements regarding student admission.", isSaved: true, floor: "Floor 5", building: "B Tower", category: "F & B"),
    // ... add more items as needed
]
