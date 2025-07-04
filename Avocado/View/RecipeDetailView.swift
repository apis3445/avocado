//
//  RecipeDetailView.swift
//  Avocado
//
//  Created by Adriancys Jesus Villegas Toro on 6/10/23.
//

import SwiftUI

struct RecipeDetailView: View {
    
    // MARK: - Properties
    var recipe: Recipe
    @State private var pulsete: Bool = false
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 0) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                Group {
                    // title
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(.top, 10)
                        .accessibilityIdentifier("RecipeTitle")
                    
                    Text("Ingredients")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    VStack(alignment: .leading, spacing: 5) {
                        ForEach(recipe.ingredients, id: \.self) { item in
                            VStack(alignment: .leading, spacing: 5) {
                                Text(item)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                Divider()
                            }
                        }
                    }
                    
                    // instruction
                    
                    Text("Directions")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    ForEach(Array(recipe.instructions.enumerated()), id: \.element) {index, item in
                        VStack(alignment: .center, spacing: 5) {
                            Text("\(index+1).\(item)")
                                .lineLimit(nil)
                                .multilineTextAlignment(.leading)
                                .font(.system(.body, design: .serif))
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                }
                .padding(.horizontal,24)
                .padding(.vertical, 12)
            }
        }
        .edgesIgnoringSafeArea(.top)
        .overlay {
            
            HStack {
                Spacer()
                
                VStack {
                    Button {
                        self.presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .shadow(radius: 4)
                            .opacity(self.pulsete ? 1 : 0.6)
                            .scaleEffect(self.pulsete ? 1.2 : 0.8, anchor: .center)
                            .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: false)
                                       , value: self.pulsete)
                    }
                    .padding(.trailing, 20)
                    .padding(.top, 24)
                    Spacer()
                }
            }
            
        }
        .onAppear {
            self.pulsete.toggle()
        }
        
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipesData[0])
    }
}
