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
            .background(.white,
                                    in: RoundedRectangle(cornerRadius: 10.0, style: .continuous))
            .overlay(
                            RoundedRectangle(cornerRadius: 10.0, style: .continuous)
                                .stroke(Color("ColorGreenDark"), lineWidth: 1)
                        )
           
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
                Image(ripening.image)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .circular))
                    .padding(.horizontal, 30)
                    .padding(.vertical, 20)
                    .overlay(alignment: .topTrailing) {
                            Caption(text: ripening.ripeness)
                        }
                        .animation(Animation.easeInOut(duration: 1), value: slideInAnimation)
                Divider().padding(.top, 0)
                Text(ripening.stage + " " + ripening.title)
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 8)
                    .padding(.leading, 20)
                    
                Text(ripening.description)
                    .font(.system(.headline, design: .default))
                    .foregroundColor(.gray)
                    .lineLimit(nil)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 10)
                Text("Instructions")
                    .font(.system(.title2, design: .rounded))
                    .fontWeight(.semibold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 10)
                Text(ripening.instruction)
                    .font(.system(.body, design: .default))
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity, alignment: .bottomLeading)
                    .lineLimit(3)
                    .multilineTextAlignment(.leading)
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
