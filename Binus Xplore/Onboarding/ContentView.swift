import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    struct Constants {
        static let Primary: Color = Color(red: 0, green: 0.29, blue: 0.68)
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Image("ColorOnboarding")
                    .resizable()
                    .scaledToFit()
                    .padding(0)
                    .frame(width: 325, height: 305, alignment: .center)
                
                Text("Accessibility")
                    .font(Font.custom("SF Pro", size: 45).weight(.bold))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                    .frame(width: 262, height: 54, alignment: .top)
                
                Text("Stay worry-free in Buncis@Alam Sutera! There's always a way")
                    .font(Font.custom("SF Pro", size: 18))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.6, green: 0.6, blue: 0.6))
                    .frame(width: 285, height: 63, alignment: .top)
                
                NavigationLink(destination: Onboarding2()) {
                    Text("Continue")
                        .foregroundColor(.white)
                        .padding()
                        .background(Constants.Primary)
                        .cornerRadius(15)
                        .navigationBarBackButtonHidden(true)
                }
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
