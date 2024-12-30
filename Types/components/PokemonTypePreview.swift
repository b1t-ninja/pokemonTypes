//
//  TypePreview.swift
//  Types
//

import SwiftUI

struct PokemonTypePreview: View {
  var type: PokemonType = .BUG
  var body: some View {
    HStack {
      Image("\(type.rawValue)")
        .resizable()
        .scaledToFit()
        .frame(width: 50)
      
      Text(type.rawValue.capitalized).bold()
        .foregroundStyle(.textDefault)
    }
  }
}

#Preview {
    PokemonTypePreview()
}
