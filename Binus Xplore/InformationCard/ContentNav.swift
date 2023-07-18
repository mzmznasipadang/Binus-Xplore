////
////  ContentNav.swift
////  Apps
////
////  Created by Marco Davincent Dermawan on 05/07/23.
//
//
//import SwiftUI
//
//struct Node {
//    let key: String
//    var value: String
//    var neighbors: [String: Int] = [:]
//}
//
//
//struct ContentNav: View {
//    @StateObject private var viewModel = ContentViewModel()
//    @Environment(\.presentationMode) var presentationMode
//    struct Constants {
//        static let Primary: Color = Color(red: 0, green: 0.29, blue: 0.68)
//    }
//
//    var body: some View {
//        ScrollView{
//            VStack {
//
//                HStack(alignment: .center, spacing: 0) { }
//                    .padding(0)
//                    .frame(width: 417, height: 250)
//                    .background(
//                        Image("admission-office-main")
//                            .resizable()
//                            .aspectRatio(contentMode: .fill)
//                            .frame(width: 417, height: 200)
//                        //.clipped()
//                    )
//                ZStack{
//                    RoundedRectangle(cornerRadius: 200)
//                        .foregroundColor(.white)
//                        .frame(width: 418.0, height:70.0)
//                        .offset(y:-120)
//
//                    VStack(spacing: 20) {
//                        Text("Trip Summary")
//                            .font(.largeTitle)
//                            .fontWeight(.bold)
//                        //.padding(.bottom, )
//                            .padding(.horizontal, -170)
//                        VStack{
//                            TextField("Enter start node", text: $viewModel.startNode)
//                                .textFieldStyle(RoundedBorderTextFieldStyle())
//                                .frame(width: 350, height: 50)
//                                .background(Color.white.opacity(0.8))
//                                .cornerRadius(10)
//
//                            TextField("Enter end node", text: $viewModel.endNode)
//                                .textFieldStyle(RoundedBorderTextFieldStyle())
//                                .frame(width: 350, height: 50)
//                                .background(Color.white.opacity(0.8))
//                                .cornerRadius(10)
//                        }
//                    }
//                }
//
//
//
//            }
//            VStack(spacing: 20) {
//                Button(action: {
//                    viewModel.findShortestPath()
//                }) {
//                    Text("Find Shortest Path")
//                        .foregroundColor(.white)
//                        .frame(width: 200, height: 50)
//                        .background(Color.gray)
//                        .cornerRadius(10)
//                }
//
//                if !viewModel.shortestPath.isEmpty {
//                    VStack {
//                        Text("Shortest Path:")
//                            .font(.headline)
//                            .padding()
//
//                        ForEach(viewModel.pathNodes, id: \.self) { node in
//                            if let distance = viewModel.nodeDistances[node] {
//
//                                HStack{
//                                    Text("\(node)")
//                                        .font(.system(size:16))
//                                        .fontWeight(.medium)
//                                        .padding(30)
//                                    Spacer()
//                                    Text("(\(distance) units)")
//                                        .font(.system(size:12))
//                                        .multilineTextAlignment(.center)
//                                        .padding(30)
//                                }
//                                .padding(.horizontal,30)
//                                HStack{
//                                    VStack {
//                                        Rectangle()
//                                            .frame(width: 4, height: 90)
//                                            .foregroundColor(.black)
//                                            .padding(.horizontal,50)
//                                    }
//                                    Spacer()
//                                }
//                                .padding(.horizontal,30)
//
//
//                            } else {
//                                Text(node)
//                                    .multilineTextAlignment(.center)
//                                    .padding()
//                            }
//                        }
//
//                        Text("Total Distance: \(viewModel.nodeDistances[viewModel.endNode] ?? 0) step")
//                            .font(.largeTitle)
//                            .padding(50)
//                            .padding(.horizontal,-170)
//                    }
//                }
//            }
//        }
//    }
//}
//
//class ContentViewModel: ObservableObject {
//    @Published var startNode: String = ""
//    @Published var endNode: String = ""
//    @Published var shortestPath: String = ""
//    @Published var pathNodes: [String] = []
//    @Published var nodeDistances: [String: Int] = [:]
//    @Published var totalDistance: Int = 0
//
//    private var graph: [String: Node] = [
//        "Lobby": Node(key: "Lobby", value: "Lobby Value", neighbors: ["Toilet": 5, "Kantin": 12, "Apple": 7]),
//        "Toilet": Node(key: "Toilet", value: "Toilet Value", neighbors: ["Lobby": 5, "GOR": 6, "Apple": 7]),
//        "Kantin": Node(key: "Kantin", value: "Kantin Value", neighbors: ["Lobby": 12, "Library": 13, "Apple": 1]),
//        "Apple": Node(key: "Apple", value: "Apple Value", neighbors: ["Lobby": 7, "Toilet": 5, "Apple": 1, "Library": 10, "GOR": 5]),
//        "Library": Node(key: "Library", value: "Library Value", neighbors: ["Kantin": 13, "Apple": 10, "GOR": 2, "Lift": 3]),
//        "GOR": Node(key: "GOR", value: "GOR Value", neighbors: ["Toilet": 6, "Apple": 5, "Library": 2, "Lift": 7]),
//        "Lift": Node(key: "Lift", value: "Lift Value", neighbors: ["Library": 3, "GOR": 7]),
//    ]
//
//
//    func findShortestPath() {
//        guard let startNode = graph[startNode], let endNode = graph[endNode] else {
//            shortestPath = "Invalid start or end node."
//            return
//        }
//
//        var distances: [String: Int] = [:]
//        var previous: [String: String] = [:]
//        var visited: Set<String> = Set()
//
//        // Initialize distances with infinity for all nodes except start node
//        for key in graph.keys {
//            distances[key] = key == startNode.key ? 0 : Int.max
//        }
//
//        while visited.count < graph.count {
//            let currentNode = getNodeWithMinimumDistance(from: visited, distances: distances)
//            visited.insert(currentNode.key)
//
//            for (neighbor, weight) in currentNode.neighbors {
//                let altDistance = distances[currentNode.key]! + weight
//
//                if altDistance < distances[neighbor]! {
//                    distances[neighbor] = altDistance
//                    previous[neighbor] = currentNode.key
//                }
//            }
//        }
//
//        var path: [String] = []
//        var currentNode = endNode.key
//        var currentDistance = 0
//
//        while currentNode != startNode.key {
//            guard let prev = previous[currentNode] else {
//                shortestPath = "No path found."
//                return
//            }
//            path.append(currentNode)
////            totalDistance += graph[prev]?.neighbors[currentNode] ?? 0
////            print(graph[prev]?.neighbors[currentNode])
//            currentNode = prev
//        }
//
//        path.append(startNode.key)
//        pathNodes = path.reversed()
//        nodeDistances = distances
//        self.totalDistance = totalDistance
//        shortestPath = pathNodes.joined(separator: " -> ")
//
////        for i in 0..<path.count {
////            print(path[i])
////            totalDistance += graph["Library"]?.neighbors["GOR"] ?? 0
////        }
//    }
//
//
//    private func getNodeWithMinimumDistance(from visited: Set<String>, distances: [String: Int]) -> Node {
//        var minNode: Node? = nil
//        var minDistance = Int.max
//
//        for (key, node) in graph {
//            if !visited.contains(key) && distances[key]! <= minDistance {
//                minNode = node
//                minDistance = distances[key]!
//            }
//        }
//
//        return minNode!
//    }
//}
//
//
//struct ContentNav_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentNav()
//    }
//}
