//
//  TypeDetailView.swift
//  Types
//

import SwiftUI


struct PokemonTypeDetailView: View {
  @State private var selectedEffectiveLvl: EffectiveLevel = .NO_EFFECT
  var type: PokemonType = .BUG
  var body: some View {
    ZStack {
      Color.backgroundDefault.ignoresSafeArea()
      VStack(spacing: 20){
        HStack(spacing: 20) {
          Image(type.rawValue).resizable().scaledToFit().frame(width: 70)
          Text(type.rawValue.capitalized).font(.title).bold()
          Spacer()
        }
        Picker("Flavor", selection: $selectedEffectiveLvl) {
          ForEach(EffectiveLevel.allCases) {lvl in
            Text(lvl.rawValue)
          }
        }
        .pickerStyle(.segmented)
        
        // list all dpending types
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], alignment: .leading) {
          ForEach(selectedEffectiveLvl.chart[type] ?? []) {t in
            PokemonTypePreview(type: t)
              .foregroundStyle(.primary)
          }
        }
        Spacer()
      }
      .foregroundStyle(.textDefault)
      .padding()
    }
  }
}

#Preview {
  PokemonTypeDetailView()
}
