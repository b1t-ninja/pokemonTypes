//
//  effectiveLevels.swift
//  Types
//

import Foundation

enum EffectiveLevel: String, CaseIterable, Hashable, Identifiable {
  case NO_EFFECT = "No effect"
  case NOT_VERY_EFFECTIVE = "Not effective"
  case EFFECTIVE = "Effective"
  case VERY_EFFECTIVE = "Very effective"
  var id: Self {self}
  
  var chart: Dictionary<PokemonType, [PokemonType]> {
    switch self {
    case .NO_EFFECT:
      return NO_EFFECT_CHART
      
    case .NOT_VERY_EFFECTIVE:
      return NOT_EFFECTIVE_CHART
      
    case .EFFECTIVE:
      return EFFECTIVE_CHART
      
    case .VERY_EFFECTIVE:
      return VERY_EFFECTIVE_CHART
    }
  }
  
  var factor: Double {
    return switch self {
    case .NO_EFFECT:
      0
    case .NOT_VERY_EFFECTIVE:
      0.5
    case .EFFECTIVE:
      1
    case .VERY_EFFECTIVE:
      2
    }
  }
}
