//
//  AvocadosView.swift
//  Avocado
//
//  Created by Adriancys Jesus Villegas Toro on 2/10/23.
//

import SwiftUI

struct AvocadosView: View {
    
    // MARK: - Properties
    @State private var pulsateAnimation: Bool = false
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("avocado")
                
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(
                    color: Color("ColorBlackTransparentDark"),
                    radius: 12,
                    x: 0,
                    y: 8
                )
                .scaleEffect(self.pulsateAnimation ? 1 : 0.9)
                .opacity(self.pulsateAnimation ? 1 : 0.9)
                .animation(Animation.easeOut(duration: 1.5).repeatForever(autoreverses: true), value: self.pulsateAnimation)
            
            VStack {
                Text("Avocado".uppercased())
                    .font(.system(size: 42, weight:.bold, design: .serif))
                    .foregroundColor(Color.white)
                    .padding()
                    .shadow(
                        color: Color("ColorBlackTransparentDark"),
                        radius: 4,
                        x: 0,
                        y: 4
                    )
                    
                
                Text("""
                     Creamy, green, and full of nutrients!
                    Avocado is a powerhouse ingredient in any meal.
                    Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
                    """)
                .foregroundColor(Color.white)
                .lineLimit(nil)
                .font(.system(.headline, design: .serif))
                .multilineTextAlignment(.center)
                .lineSpacing(8)
                .frame(maxWidth: 640, minHeight: 120)
            }
            .padding()

            Spacer()
        }
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            self.pulsateAnimation.toggle()
        }
    }
}

struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosView()
            .preferredColorScheme(.dark)
    }
}
