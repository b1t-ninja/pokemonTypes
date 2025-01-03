//
//  types.swift
//  Types
//

import Foundation

// All different pokemon types
enum PokemonType : String, Hashable, CaseIterable, Identifiable {
  case BUG = "bug"
  case DARK = "dark"
  case DRAGON = "dragon"
  case ELECTRIC = "electric"
  case FAIRY = "fairy"
  case FIGHTING = "fighting"
  case FIRE = "fire"
  case FLYING = "flying"
  case GHOST = "ghost"
  case GRASS = "grass"
  case GROUND = "ground"
  case ICE = "ice"
  case NORMAL = "normal"
  case POISON = "poison"
  case PSYCHIC = "psychic"
  case ROCK = "rock"
  case STEEL = "steel"
  case WATER = "water"
  var id: Self {self}
}
