//
//  Pet.swift
//  HomeView
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 28/07/25.
//

import SwiftUI
import SwiftData


@Model
class Pet: Identifiable {
    var id: UUID
    var nome: String
    var idade: Int
    var peso: Double
    var foto: Data?
    var detalhes: String
    var raca: String
    var sexo: Sexo
    var especie: Especie
    
    init(nome: String, idade: Int, peso: Double, foto: Data?, detalhes: String, raca: String, sexo: Sexo, especie: Especie) {
        self.nome = nome
        self.idade = idade
        self.peso = peso
        self.foto = foto
        self.detalhes = detalhes
        self.raca = raca
        self.sexo = sexo
        self.especie = especie
        self.id = UUID()
    }
}

enum Sexo: String, CaseIterable, Codable {
    case male, female
    
    var displayText: String {
        switch self {
        case .male:
            return "Macho"
        case .female:
            return "Fêmea"
        }
    }
}

enum Especie: String, CaseIterable, Codable {
    case bird, cat, dog, fish, rabbit
    
    var displayText: String {
        switch self {
        case .bird:
            return "Pássaro"
        case .cat:
            return "Gato"
        default:
            return "Animal"
        }
    }
}

