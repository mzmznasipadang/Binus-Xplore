//
//  Pinpoint.swift
//  Binus Xplore
//
//  Created by Jessica Lynn on 16/07/23.
//

import Foundation
import SwiftUI
import Combine

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
    pinpoint(name: "LKC", images: ["404", "SunibAnggrek", "auditorium"], status: true, time: "09:00 - 17.00", description: "The Library And Knowledge Center (LKC) aims to support research, and community activities through its library and learning facilities.", isSaved: false, floor: "Floor 1", building: "B Tower", category: "Public Facility"),
    pinpoint(name: "GOR", images: ["404", "SunibAnggrek", "auditorium"], status: false, time: "08:00 - 18.00", description: "The three-floored Sports Building facilitates sports activities and serves as a multi-purpose hall for events.", isSaved: true, floor: "Floor 1", building: "B Tower", category: "Public Facility"),
    pinpoint(name: "Drop Off", images: ["404", "SunibAnggrek", "auditorium"], status: true, time: "06:00 - 20.00", description: "The Lobby is a lively central area, catering to the comings and goings of students with utmost warmth.", isSaved: true, floor: "Floor 1", building: "C Tower", category: "Public Facility"),
    pinpoint(name: "Kantin", images: ["404", "SunibAnggrek", "auditorium"], status: false, time: "08:00 - 16.00", description: "Canteen provides everyone with warm and delish meals on the go.", isSaved: true, floor: "Floor 1", building: "B Tower", category: "F & B"),
    pinpoint(name: "Tomoro", images: ["404", "SunibAnggrek", "auditorium"], status: false, time: "08:00 - 19.00", description: "Tomoro Coffee provides a wide selection of food and drinks to enjoy as well as a place to relax and meet up with friends.", isSaved: true, floor: "Floor 1", building: "B Tower", category: "F & B"),
    pinpoint(name: "Admission", images: ["404", "SunibAnggrek", "auditorium"], status: false, time: "09:00 - 18.00", description: "The Admissions Office aims to facilitate student enrollment and guide applicants throughout the process.", isSaved: true, floor: "Floor 1", building: "C Tower", category: "Office"),
    // ... add more items as needed
]

class GlobalData: ObservableObject {
    @Published var endNode: String = ""
    @Published var startNode: String = ""
}
