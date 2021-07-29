//
//  ContentView.swift
//  GradientButtons
//
//  Created by Aaryaman Saini on 28/07/21.
//

import SwiftUI

struct ContentView: View {
    
    var brandGradient = Gradient(colors: [Color(.systemTeal), Color(.systemBlue), Color(.systemPurple), Color(.systemPink)])
    
    var brandGradient2 = Gradient(colors: [Color(.systemTeal), Color(.systemPurple)])
    
    var brandGradient3 = Gradient(colors: [Color(.systemTeal), Color(.systemPurple), Color(.systemTeal)])
    
    var body: some View {
        
        VStack(spacing: 60){
            
            Text("Gradient Buttons")
                .font(.system(size: 45))
                .bold()
                .gradientForeground(colors: [.blue, .purple, .pink])
            
            
            Button {
                //                print("Linear Gradient Button Tapped")
            } label: {
                Text("Linear Gradient")
                    .font(.system(size: 30))
                    .bold()
                    .frame(width: 300, height: 60)
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: brandGradient, startPoint: .leading, endPoint: .trailing))
                    .clipShape(Capsule())
            }
            .shadow(color: Color(#colorLiteral(red: 0.7085203528, green: 0.7107221484, blue: 0.8101897836, alpha: 1)), radius: 20, x: 20, y: 20)
            .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -20, y: -20)
            
            Button {
                //                print("Linear Gradient Button Tapped")
            } label: {
                Text("Linear Gradient")
                    .bold()
                    .font(.system(size: 35))
                    .frame(width: 280, height: 60)
                    .gradientForeground(colors: [.blue, .purple,.pink])
                    .overlay(RoundedRectangle(cornerRadius: 12).stroke(LinearGradient(gradient: brandGradient, startPoint: .leading, endPoint: .trailing) , lineWidth: 5.0)
                    )
                
            }
            
            
            Button {
                //                print("Radial Gradient Button Tapped")
            } label: {
                Text("Radial Gradient")
                    .bold()
                    .frame(width: 160, height: 160)
                    .foregroundColor(.white)
                    .background(RadialGradient(gradient: brandGradient2, center: .top, startRadius: 5, endRadius: 180))
                    .clipShape(Circle())
            }
            .shadow(color: Color(#colorLiteral(red: 0.7085203528, green: 0.7107221484, blue: 0.8101897836, alpha: 1)), radius: 20, x: 20, y: 20)
            .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -20, y: -20)
            
            Button {
                //                print("Angular Gradient Button Tapped")
            } label: {
                Text("Angular Gradient")
                    .bold()
                    .frame(width: 160, height: 160)
                    .foregroundColor(.white)
                    .background(AngularGradient(gradient: brandGradient3, center: .center))
                    .clipShape(Circle())
            }
            .shadow(color: Color(#colorLiteral(red: 0.7085203528, green: 0.7107221484, blue: 0.8101897836, alpha: 1)), radius: 20, x: 20, y: 20)
            .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -20, y: -20)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(#colorLiteral(red: 0.9174036384, green: 0.8838293552, blue: 0.9835227132, alpha: 1)))
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


extension View{
    public func gradientForeground(colors: [Color]) -> some View{
        self.overlay(LinearGradient(gradient: .init(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing))
            .mask(self)
    }
}
