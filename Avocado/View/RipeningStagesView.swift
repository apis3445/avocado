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
        VStack{
            ScrollView {
                VStack(spacing: 50) {
                    ForEach(rapiningStages) { stage in
                        RipeningView(ripening: stage)
                            .frame(width: 370, alignment: .center)
                    }
                }.frame(maxWidth: .infinity, alignment: .center)
            }
        }
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(rapiningStages: ripeningData)
    }
}
