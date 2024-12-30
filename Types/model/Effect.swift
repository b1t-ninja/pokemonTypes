//
//  Effect.swift
//  Types
//


import SwiftUI

enum Effect: String, CaseIterable, Hashable, Identifiable {
  case BULLIES = "figure.kickboxing"
  case GETS_BULLIED = "figure.fall"
  var id: Self {self}
}
