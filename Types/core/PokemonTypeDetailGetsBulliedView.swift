//
//  PokemonTypeDetailGetsBulliedView.swift
//  Types
//

import SwiftUI



struct PokemonTypeDetailGetsBulliedView: View {
  var type: PokemonType = .BUG
  
  var veryEffective: [PokemonType] {
    return getCorrcospodingTypes(typeChart: VERY_EFFECTIVE_CHART)
  }
  
  var effective: [PokemonType] {
    return getCorrcospodingTypes(typeChart: EFFECTIVE_CHART)
  }
  
  var notVeryEffective: [PokemonType] {
    return getCorrcospodingTypes(typeChart: NOT_EFFECTIVE_CHART)
  }
  
  var noEffect: [PokemonType] {
    return getCorrcospodingTypes(typeChart: NO_EFFECT_CHART)
  }
  
  var body: some View {
    ZStack {
      Color.backgroundDefault.ignoresSafeArea()
      VStack(spacing: 20){
        HStack(spacing: 20) {
          Image(type.rawValue).resizable().scaledToFit().frame(width: 70)
          Text(type.rawValue.capitalized).font(.title).bold()
          Spacer()
        }
        
        ScrollView(showsIndicators: false) {
          LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], alignment: .leading) {
            Section(header: Text("Very effective").font(.title3).bold()) {
              ForEach(veryEffective) {type in
                PokemonTypePreview(type: type)
              }
            }
            
            Section(header: Text("Effective").font(.title3).bold()) {
              ForEach(effective) {type in
                PokemonTypePreview(type: type)
              }
            }
            
            Section(header: Text("Not very effective").font(.title3).bold()) {
              ForEach(notVeryEffective) {type in
                PokemonTypePreview(type: type)
              }
            }
            
            Section(header: Text("No effect").font(.title3).bold()) {
              ForEach(noEffect) {type in
                PokemonTypePreview(type: type)
              }
            }
          }
        }
      }
      .padding()
      Spacer()
    }
  }
  
  func getCorrcospodingTypes(typeChart: [PokemonType:[PokemonType]]) -> [PokemonType] {
    return typeChart
      .filter({entry in
        entry.value.contains(type)
      })
      .map {$0.key}
  }
}


#Preview {
  PokemonTypeDetailGetsBulliedView()
}
