//
//  SummarizePage.swift
//  Binus Xplore
//
//  Created by Marco Davincent Dermawan on 17/07/23.
//

import Foundation
import SwiftUI

struct Node {
    let key: String
    var value: String
    var neighbors: [String: Int] = [:]
}

struct SummarizePage: View {
    //searchText = dummy
    let searchText: String
    @StateObject private var viewModel: ContentViewModel
    @Environment(\.presentationMode) var presentationMode
    struct Constants {
        static let Primary: Color = Color(red: 0, green: 0.29, blue: 0.68)
    }
    init(searchText: String) {
        self.searchText = searchText
        self._viewModel = StateObject(wrappedValue: ContentViewModel(endNode: searchText))
    }
    
    var body: some View {
        NavigationView {
            VStack {
                
                Image ("auditorium")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200.0)
                    .frame(height: 360.0)
                    .edgesIgnoringSafeArea(.all)
                    .offset(x: 4)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 37)
                        .foregroundColor(.white)
                        .frame(width: 418.0, height: 700.0)
                        .offset(y:-40)
                    
                        .navigationBarItems(leading: backButton)
                    
                    
                    VStack (alignment: .leading, spacing:15){
                        
                        Text("Trip Summary")
                            .font(.system(size: 30))
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal,80)
                            .padding(.vertical,-35)
                        
                        HStack (spacing:35){
                            
                            Text("From:")
                                .fontWeight(.medium)
                                .font(.system(size:16))
                            
                            HStack (spacing:15){
                                //                                Text ("Lobby")
                                //                                    .fontWeight(.medium)
                                //                                    .font(.system(size:16))
                                TextField("Enter start node", text: $viewModel.startNode)
                                    .frame(width:70)
                                
                                
                                Image("guideIcon")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20)
                                    .clipped()
                                
                                Text(searchText)
                                    .fontWeight(.medium)
                                    .font(.system(size:16))
                                    .lineSpacing(22)
                                
                                
                                
                            }
                            .frame(width:200)
                        }
                        .padding(.horizontal,84)
                        .padding(.vertical,-10)
                        
                        ScrollView{
                            
                            ZStack{
                                Rectangle()
                                    .frame(width: 500, height: 500)
                                    .foregroundColor(.clear)

                                    VStack{
                                    
                                    if !viewModel.shortestPath.isEmpty {
                                            VStack {
                                                HStack{
                                                    Text("Start \(viewModel.startNode):")
                                                        .font(.headline)
                                                        .padding()
                                                        .padding(.horizontal,50)
                                                    Spacer()
                                                }
                                                
                                                
                                                ForEach(viewModel.pathNodes, id: \.self) { node in
                                                    if let distance = viewModel.nodeDistances[node] {
                                                        
                                                        
                                                        
                                                        HStack{
                                                            
                                                            VStack(alignment: .leading){
                                                                
                                                                VStack{
                                                                    Text("\(node)")
                                                                        .font(.system(size:16))
                                                                        .fontWeight(.medium)
                                                                        .padding(.horizontal,-30)
                                                                    
                                                                    HStack (alignment: .center){
                                                                        VStack {
                                                                            ForEach(0..<7) { _ in
                                                                                Rectangle()
                                                                                    .frame(width: 4, height: 4)
                                                                                    .foregroundColor(.black)
                                                                            }
                                                                        }
                                                                        Text ("\(distance) meters walk")
                                                                            .font(.system(size:12))
                                                                    }
                                                                    .padding(.horizontal,30)
                                                                }
                                                            }
                                                            .padding(.horizontal,70)
                                                            Spacer()
                                                        }
                                                        
                                                        
                                                    } else {
                                                        Text(node)
                                                            .multilineTextAlignment(.center)
                                                            .padding()
                                                    }
                                                }
                                                
                                                Text("Total Distance: \(viewModel.nodeDistances[viewModel.endNode] ?? 0) step")
                                                    .font(.largeTitle)
                                                    .padding(50)
                                                    .padding(.horizontal,-170)
                                                
                                                Rectangle()
                                                    .frame(height:240)
                                                    .foregroundColor(.white)
                                                    
                                            }
                                        
                                        
                                    }
                                }
                                Spacer()
                            }
                        }
                        
                        
                    }
                    
                    
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(width: 418.0, height: 200.0)
                        .offset(y:205)
                    
                    
                    HStack {
                        Spacer()
                        
                        //                        Button(action:{}) {
                        //                            Text("Let's Go!")
                        //                                .font(Font.custom("SF Pro Display", size: 22)
                        //                                    .weight(.medium))
                        //                                .foregroundColor(.white)
                        //                                .frame(width: 354, height: 54)
                        //                                .background(Constants.Primary)
                        //                                .cornerRadius(15)
                        //                                .edgesIgnoringSafeArea(.all)
                        //
                        //                        }
                        //                        .padding()
                        //                        .edgesIgnoringSafeArea(.bottom)
                        //                        .offset(y:145)
                        
                        Button(action: {
                            viewModel.findShortestPath()
                        }) {
                            Text("Let's Go!")
                                .font(Font.custom("SF Pro Display", size: 22)
                                    .weight(.medium))
                                .foregroundColor(.white)
                                .frame(width: 354, height: 54)
                                .background(Constants.Primary)
                                .cornerRadius(15)
                                .edgesIgnoringSafeArea(.all)
                        }
                        .padding()
                        .edgesIgnoringSafeArea(.bottom)
                        .offset(y:145)
                        Spacer()
                    }
                    
                    
                }
                
            }
        }
        .navigationBarBackButtonHidden(true)
    }
    
    
    var backButton: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Image(systemName: "chevron.left")
                    .foregroundColor(.black)
                    .font(.system(size: 12).weight(.semibold))
                    .padding(16)
                    .background(Color.white)
                    .clipShape(Circle())
                    .offset(x: 13, y: 18)

            }
        }
        .buttonStyle(BorderlessButtonStyle())
    }
}

    
    
    class ContentViewModel: ObservableObject {
        @Published var startNode: String = ""
        @Published var endNode: String
        @Published var shortestPath: String = ""
        @Published var pathNodes: [String] = []
        @Published var nodeDistances: [String: Int] = [:]
        @Published var totalDistance: Int = 0
        //    @Published var searchText = searchText
        init(endNode: String) { // Update this line
            self.endNode = endNode // Update this line
        }
        
        private var graph: [String: Node] = [
            "Lobby": Node(key: "Lobby", value: "Lobby Value", neighbors: ["Toilet": 5, "Kantin": 12, "Apple": 7]),
            "Toilet": Node(key: "Toilet", value: "Toilet Value", neighbors: ["Lobby": 5, "GOR": 6, "Apple": 7]),
            "Kantin": Node(key: "Kantin", value: "Kantin Value", neighbors: ["Lobby": 12, "Library": 13, "Apple": 1]),
            "Apple": Node(key: "Apple", value: "Apple Value", neighbors: ["Lobby": 7, "Toilet": 5, "Apple": 1, "Library": 10, "GOR": 5]),
            "Library": Node(key: "Library", value: "Library Value", neighbors: ["Kantin": 13, "Apple": 10, "GOR": 2, "Lift": 3]),
            "GOR": Node(key: "GOR", value: "GOR Value", neighbors: ["Toilet": 6, "Apple": 5, "Library": 2, "Lift": 7]),
            "Lift": Node(key: "Lift", value: "Lift Value", neighbors: ["Library": 3, "GOR": 7]),
        ]
        
        
        func findShortestPath() {
            guard let startNode = graph[startNode], let endNode = graph[endNode] else {
                shortestPath = "Invalid start or end node."
                return
            }
            
            var distances: [String: Int] = [:]
            var previous: [String: String] = [:]
            var visited: Set<String> = Set()
            
            // Initialize distances with infinity for all nodes except start node
            for key in graph.keys {
                distances[key] = key == startNode.key ? 0 : Int.max
            }
            
            while visited.count < graph.count {
                let currentNode = getNodeWithMinimumDistance(from: visited, distances: distances)
                visited.insert(currentNode.key)
                
                for (neighbor, weight) in currentNode.neighbors {
                    let altDistance = distances[currentNode.key]! + weight
                    
                    if altDistance < distances[neighbor]! {
                        distances[neighbor] = altDistance
                        previous[neighbor] = currentNode.key
                    }
                }
            }
            
            var path: [String] = []
            var currentNode = endNode.key
            var currentDistance = 0
            
            while currentNode != startNode.key {
                guard let prev = previous[currentNode] else {
                    shortestPath = "No path found."
                    return
                }
                path.append(currentNode)
                //            totalDistance += graph[prev]?.neighbors[currentNode] ?? 0
                //            print(graph[prev]?.neighbors[currentNode])
                currentNode = prev
            }
            
            path.append(startNode.key)
            pathNodes = path.reversed()
            nodeDistances = distances
            self.totalDistance = totalDistance
            shortestPath = pathNodes.joined(separator: " -> ")
            
            //        for i in 0..<path.count {
            //            print(path[i])
            //            totalDistance += graph["Library"]?.neighbors["GOR"] ?? 0
            //        }
        }
        
        
        private func getNodeWithMinimumDistance(from visited: Set<String>, distances: [String: Int]) -> Node {
            var minNode: Node? = nil
            var minDistance = Int.max
            
            for (key, node) in graph {
                if !visited.contains(key) && distances[key]! <= minDistance {
                    minNode = node
                    minDistance = distances[key]!
                }
            }
            
            return minNode!
        }
    }

struct SummarizePage_Previews: PreviewProvider {
    static var previews: some View {
        SummarizePage(searchText : "Lift")
    }
}
