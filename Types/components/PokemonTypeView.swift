//
//  PokemonTypeView.swift
//  Types
//


import SwiftUI

struct PokemonTypeView: View {
  @Environment(HomeViewModel.self) var model
  var type: PokemonType = .GHOST
  var body: some View {
    Image(type.rawValue)
      .resizable()
      .frame(width: 100, height: 100)
  }
}

#Preview {
  PokemonTypeView()
    .environment(HomeViewModel())
}

