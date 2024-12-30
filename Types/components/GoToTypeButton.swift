//
//  GoToTypeButton.swift
//  Types
//


import SwiftUI

struct GoToTypeButton: View {
  var onClick: (() -> Void)? = nil
  var body: some View {
    Button {
      if let handle = onClick {
        handle()
      }
    } label: {
      Image(systemName: "scope")
        .font(.system(size: 18))
        .foregroundStyle(.textDefault)
        .padding()
    }
  }
}
