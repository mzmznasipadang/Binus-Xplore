import Foundation
import SwiftUI

struct OfficePage: View {
    let searchText: String

    @Environment(\.presentationMode) var presentationMode
    @State private var navigate = false
    
    var body: some View {
        NavigationView {
            VStack {
                TopView()
                
                ScrollView {
                    VStack(spacing: 8) {
                        ForEach(pinpoints.filter { $0.category.first?.localizedCaseInsensitiveContains(searchText) ?? false }, id: \.id) { item in
                            NavigationButton(item: item, navigate: $navigate)
                        }
                    }
                    .padding()
                    .offset(y:-20)
                }
            }
            .background(Color(hue: 0, saturation: 0, brightness: 0.97))
            .edgesIgnoringSafeArea(.vertical)
            .navigationBarItems(
                leading: LeadingButton(presentationMode: _presentationMode),
                trailing: TrailingText()
            )
        }.navigationBarBackButtonHidden(true)
    }
}

struct TopView: View {
    var body: some View {
        VStack {
//            Spacer(minLength: 100)
            HStack(){
                Button(action: {
                    
                }) {
                    Label("Filter By", systemImage: "line.3.horizontal.decrease.circle.fill")
                        .font(.body)
                        .foregroundColor(Color.white)

                        .padding(.horizontal, 10.0)
                        .padding(.vertical, 8)
                        .background(Color("MainColor"))
                        .cornerRadius(12)
                        .offset(x:5)
                }
                .padding(.leading, 5)
                .padding(.top, 100.0)
                Spacer()
            }
            .padding()
        }
    }
}

struct NavigationButton: View {
    let item: pinpoint
    @Binding var navigate: Bool
    
    var body: some View {
        Button(action: {
            self.navigate = true
        }) {
            OverlayView(item: item)
        }
        NavigationLink(destination: informationCardView(), isActive: $navigate) { EmptyView() }
    }
}

struct OverlayView: View {
    let item: pinpoint
    
    var body: some View {
        RoundedRectangle(cornerRadius: 16)
            .foregroundColor(.white)
            .frame(width: 352.0, height: 169.0)
            .overlay(
                HStack(spacing: 8) {
                    Image(item.images.first ?? "default_image")
                        .resizable()
                        .padding()
                        .frame(width: 138.0, height: 138.0)
                        .cornerRadius(8)
                        .offset(x:17)
                    
                    InfoView(item: item)
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.black)
                        .padding()
                }
                .padding(.horizontal)
            )
    }
}

struct InfoView: View {
    let item: pinpoint
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(item.name)
                .font(.system(size: 24))
                .fontWeight(.bold)
                .foregroundColor(.black)
                .padding(.leading)
            
            LocationView(item: item)
            
            TimeView(item: item)
        }.offset(x:7)
            .frame(width: 165, height: 300, alignment: .leading)
    }
}

struct LocationView: View {
    let item: pinpoint
    
    var body: some View {
        HStack{
            Image(systemName: "location")
                .foregroundColor(.black)
                .padding(.leading)
            
            Text(item.floor + ", " + item.building)
                .foregroundColor(.black)
                .font(.system(size: 16))
                .lineLimit(1)
        }
    }
}

struct TimeView: View {
    let item: pinpoint
    
    var body: some View {
        HStack{
            Image(systemName: "clock")
                .foregroundColor(.black)
                .padding(.leading)
            
            Text(item.time)
                .foregroundColor(.black)
                .font(.system(size: 16))
                .lineLimit(1)
                .frame(width: 95.0)
        }.offset(y:5)
    }
}

struct LeadingButton: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            Image(systemName: "chevron.left")
                .foregroundColor(Color.black)
                .frame(width: 40.0, height: 40.0)
                .font(.system(size: 12).weight(.semibold))
                .background(Color.white)
                .clipShape(Circle())
        }
        .padding(.top, 15.0)
    }
}

struct TrailingText: View {
    var body: some View {
        Text("Available Offices")
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding(.trailing, 25.0)
            .padding(.top, 19)
    }
}

struct OfficePage_Previews: PreviewProvider {
    static var previews: some View {
        OfficePage(searchText: "Office")
    }
}

