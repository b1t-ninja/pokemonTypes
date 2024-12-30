//
//  HomeView.swift
//  Types
//

import SwiftUI

struct HomeView: View {
  @State var model = HomeViewModel()
  
  var body: some View {
    NavigationStack {
      ZStack {
        Color.backgroundDefault.ignoresSafeArea()
        LazyVGrid(columns: model.columns, spacing: 10) {
          ForEach(PokemonType.allCases) {type in
            NavigationLink {
              PokemonTypeDetailGetsBulliedView(type: type)
            } label: {
              PokemonTypeView(type: type)
            }
            .navigationTitle("Match'em")
          }
        }
        .environment(model)
      }
    }
  }
}

#Preview {
  HomeView()
    .environment(HomeViewModel())
}
