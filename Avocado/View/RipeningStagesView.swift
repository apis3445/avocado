//
//  RipeningStagesView.swift
//  Avocado
//
//  Created by Adriancys Jesus Villegas Toro on 2/10/23.
//

import SwiftUI

struct RipeningStagesView: View {
    // MARK: - Properies
    var rapiningStages: [Ripening] =  ripeningData
    
    // MARK: - Body
    var body: some View {
        GeometryReader { geometry in
            VStack{
                ScrollView(.horizontal) {
                    HStack(spacing: 40) {
                        ForEach(rapiningStages) { stage in
                            RipeningView(ripening: stage)
                                .frame(width: 360, alignment: .center)
                                .padding(EdgeInsets(top: 10, leading: 15, bottom: 20, trailing: 0))
                        }
                    }
                }
            }
        }
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(rapiningStages: ripeningData)
    }
}
