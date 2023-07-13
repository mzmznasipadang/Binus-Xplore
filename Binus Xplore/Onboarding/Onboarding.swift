import SwiftUI
import CoreData

struct Onboarding: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationView {
            VStack {
                Image("ColorOnboarding")
                    .resizable()
                    .scaledToFit()
                    .padding(0)
                    .frame(width: 325, height: 305, alignment: .center)
                
                Text("Accessibility")
                    .fontWeight(.bold)
                    .font(.system(size: 45))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("Apple"))
                    .frame(width: 280, height: 54, alignment: .top)
                
                Text("Stay worry-free in Buncis@Alam Sutera! There's always a way")
                    .fontWeight(.regular)
                    .font(.system(size: 18))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("Apple"))
                    .frame(width: 285, height: 63, alignment: .top)
                
                NavigationLink(destination: Onboarding2()) {
                    Text("Continue")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color("MainColor"))
                        .cornerRadius(15)
                        .navigationBarBackButtonHidden(true)
                }
            }
//            .background(Color("WhiteBG"))
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
            
        }
//        .background(Color("WhiteBG")) //Ini Aneh
    }
}
struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
