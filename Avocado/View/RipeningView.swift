//
//  RipeningView.swift
//  Avocado
//
//  Created by Adriancys Jesus Villegas Toro on 7/10/23.
//

import SwiftUI

struct Caption: View {
    let text: String
    var body: some View {
        Text(text)
            .padding()
            .fontWeight(.bold)
            .foregroundColor(Color("ColorGreenDark"))
            .background(Color("ColorGreenLight").opacity(0.75),
                        in: RoundedRectangle(cornerRadius: 10.0, style: .continuous))
            .padding(.horizontal, 30)
            .padding(.vertical, 20)
    }
}

struct RipeningView: View {
    
    // MARK: - Properties
    @State private var slideInAnimation: Bool = false
    var ripening: Ripening
    
    // MARK: - Body
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text(ripening.stage + " " + ripening.title)
                    .padding()
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color("ColorGreenMedium"))
                    )
                
                Image(ripening.image)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .circular))
                    .padding(.horizontal, 30)
                    .padding(.vertical, 20)
                    .overlay(alignment: .bottomTrailing) {
                        Caption(text: ripening.ripeness)
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 10.0, style: .circular)
                            .fill(Color("ColorGreenDark"))
                            .frame(width: geometry.size.width-45, height: geometry.size.width-45, alignment: .center)
                        
                    )
                
                    .animation(Animation.easeInOut(duration: 1), value: slideInAnimation)
                
                
                Text(ripening.description)
                    .italic()
                    .font(.system(size: 24, weight: .regular, design: .default))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenDark"))
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Divider().frame(minHeight: 3)
                    .overlay(Color("ColorGreenDark"))
                    .padding(.horizontal)
                
                Text(ripening.instruction)
                    .font(.system(size: 22, weight: .regular, design: .default))
                    .foregroundColor(Color("ColorGreenMedium"))
                    .frame(maxWidth: .infinity, alignment: .bottomLeading)
                    .lineLimit(3)
                    .multilineTextAlignment(.leading)
                    .padding(.vertical, 20)
                    .padding(.horizontal, 20)
            }
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"),
                radius: 8,
                x: 0,
                y: 0)
    }
}

struct RipeningView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningView(ripening: ripeningData[0])
    }
}
