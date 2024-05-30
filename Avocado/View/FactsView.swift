//
//  FactsView.swift
//  Avocado
//
//  Created by Adriancys Jesus Villegas Toro on 5/10/23.
//

import SwiftUI

struct FactsView: View {
    // MARK: - Properties
    var fact: Fact
    
    // MARK: - Body
    var body: some View {
        
        ZStack {
            Text(fact.content)
                .padding(.leading, 65)
                .padding(.trailing, 10)
                .padding(.vertical, 3)
                .frame(width: 320, height: 135, alignment: .center)
                .background(Color("ColorGreenMedium"))
                .cornerRadius(12)
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                .font(.footnote)
                .foregroundColor(Color.white)
            
            Image(fact.image)
                .resizable()
                .frame(width: 66, height: 66, alignment: .center)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(Color.white)
                        .frame(width: 74, height: 74, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(Color("ColorGreenMedium"))
                        .frame(width: 82, height: 82, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(Color("ColorAppearanceAdaptive"))
                        .frame(width: 90, height: 90, alignment: .center)
                )
                .offset(x: -150)
        }
                
    }
}

struct FactsView_Previews: PreviewProvider {
    static var previews: some View {
        FactsView(fact: factData[0])
            .previewLayout(.fixed(width: 400, height: 220))
    }
}
