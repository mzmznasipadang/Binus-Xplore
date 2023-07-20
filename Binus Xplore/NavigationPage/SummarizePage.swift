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
    let searchText: String
    let searchWord: String
    @State private var navigate = false
    @StateObject private var viewModel: ContentViewModel
    @EnvironmentObject var globalData: GlobalData
//    @EnvironmentObject var sharedData: SharedDataModel
    @Environment(\.presentationMode) var presentationMode
    struct Constants {
        static let Primary: Color = Color(red: 0, green: 0.29, blue: 0.68)
    }
    init(searchText: String, searchWord : String) {
        self.searchText = searchText
        self.searchWord = searchWord
        self._viewModel = StateObject(wrappedValue: ContentViewModel(endNode: searchText,startNode : searchWord))
    }
    
//    init(searchWord: String){
//
//    }
//    init(searchWord: String) {
//        self.searchWord = searchWord
//        self._viewModel = StateObject(wrappedValue: ContentViewModel(startNode: searchWord))
//    }
    
    var body: some View {
        NavigationView {
            VStack {
                
                Image ("GOR")
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
                            .padding(.vertical,-15)
                        
                        HStack (spacing:35){
                            
                            Text("From:")
                                .fontWeight(.medium)
                                .font(.system(size:16))
                            
                            HStack (spacing:15){
                                //                                Text ("Lobby")
                                //                                    .fontWeight(.medium)
                                //                                    .font(.system(size:16)
                                
                                Text(searchWord)
                                    .fontWeight(.medium)
                                    .font(.system(size:16))
                                    .lineSpacing(22)
                                
                                
                                Image(systemName: "arrowshape.right.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 15)
                                    .clipped()
                                
                                Text(searchText)
                                    .fontWeight(.medium)
                                    .font(.system(size:16))
                                    .lineSpacing(22)
                            }
                            .frame(width:200)
                        }
                        .padding(.horizontal,84)
                        .padding(.vertical,10)
                        
                        ScrollView{
                            ZStack{
                                Rectangle()
                                    .frame(width: 500, height: 500)
                                    .foregroundColor(.clear)
                                    VStack{
                                    if !viewModel.shortestPath.isEmpty {
                                            VStack {
                                                HStack{
                                                    Text("Start (\(viewModel.startNode)):")
                                                        .font(.headline)
                                                        .padding()
                                                        .padding(.horizontal,65)
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
                                                        
                                                        
                                                    }
                                                    else {
                                                        Text(node)
                                                            .multilineTextAlignment(.center)
                                                            .padding()
                                                    }
                                                }
                                                
                                                HStack{
                                                    Text(" \(viewModel.endNode)")
                                                        .font(.headline)
                                                        .padding()
                                                        .padding(.horizontal,60)
                                                    Spacer()
                                                }
                                                
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
                        .onAppear(perform: viewModel.findShortestPath)
                    
                    
                    HStack {
                        Spacer()
                        
                        Button(action: {
//                            viewModel.findShortestPath()
                            
                            self.navigate = true
                        }) {
                            Text("Let's Go!")
                                .font(.system(size: 22).weight(.medium))
                                .foregroundColor(.white)
                                .frame(width: 354, height: 54)
                                .background(Constants.Primary)
                                .cornerRadius(15)
                                .edgesIgnoringSafeArea(.all)
                        }
                        .padding()
                        .edgesIgnoringSafeArea(.bottom)
                        .offset(y:145)
                        NavigationLink(destination: MapNav(viewModel: viewModel).environmentObject(globalData), isActive: $navigate) { EmptyView() }
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
                    .offset(x: 13, y: 12)

            }
        }
        .buttonStyle(BorderlessButtonStyle())
    }
}

    
    
    class ContentViewModel: ObservableObject {
        @Published var startNode: String
        @Published var endNode: String
        @Published var shortestPath: String = ""
        @Published var pathNodes: [String] = []
        @Published var nodeDistances: [String: Int] = [:]
        @Published var totalDistance: Int = 0
        //    @Published var searchText = searchText
        init(endNode: String,startNode:String) { // Update this line
            self.endNode = endNode
            self.startNode = startNode// Update this line
        }
//        init(){
//
//        }
        private var graph: [String: Node] = [
            "LKC": Node(key: "LKC", value: "LKC Value", neighbors: ["Drop Off": 5, "Kantin": 12, "Tomoro": 7]),
            "Drop Off": Node(key: "Drop Off", value: "Drop Off Value", neighbors: ["LKC": 5, "GOR": 6, "Tomoro": 7]),
            "Kantin": Node(key: "Kantin", value: "Kantin Value", neighbors: ["LKC": 12, "Admission": 13, "Tomoro": 1]),
            "Tomoro": Node(key: "Tomoro", value: "Tomoro Value", neighbors: ["LKC": 7, "Drop Off": 7, "Admission": 10, "GOR": 5]),
            "Admission": Node(key: "Admission", value: "Admission Value", neighbors: ["Kantin": 13, "Tomoro": 10, "GOR": 2, "SSC": 3]),
            "GOR": Node(key: "GOR", value: "GOR Value", neighbors: ["Drop Off": 6, "Tomoro": 5, "Admission": 2, "SSC": 7]),
            "SSC": Node(key: "SSC", value: "SSC Value", neighbors: ["Admission": 3, "GOR": 7]),
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
                currentNode = prev
            }
            
            path.append(startNode.key)
            pathNodes = path.reversed()
            nodeDistances = distances
            self.totalDistance = totalDistance
            shortestPath = pathNodes.joined(separator: " -> ")
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

struct ContentNav_Previews: PreviewProvider {
    static var previews: some View {
        SummarizePage(searchText : "item", searchWord : "item" ).environmentObject(GlobalData())
    }
}
