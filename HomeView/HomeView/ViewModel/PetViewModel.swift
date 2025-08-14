//
//  PetViewModel.swift
//  HomeView
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 14/08/25.
//

import SwiftUI
import SwiftData

class PetViewModel: ObservableObject {
    @Published var pets: [Pet] = []
    
    private init() {}
    
    static let shared = PetViewModel()
    
    func createPet(nome: String, idade: Int, peso: Double, foto: Data?, detalhes: String, raca: String, sexo: Sexo, especie: Especie, context: ModelContext) {
        let newPet = Pet(nome: nome, idade: idade, peso: peso, foto: foto, detalhes: detalhes, raca: raca, sexo: sexo, especie: especie)
        
        context.insert(newPet)
        
        
        do {
            try context.save()
        } catch {
            print("Erro ao salvar novo pet \(error)")
        }
        
        
        pets.append(newPet)
    }
    
    func removePet(selectedPet: Pet, context: ModelContext) {
        
        context.delete(selectedPet)
        
        do {
            try context.save()
        } catch {
            print("Erro ao deletar pet \(error)")
        }
        
        pets.removeAll { $0.id == selectedPet.id }
    }
    
    func fetchPets(context: ModelContext) {
        let descriptor = FetchDescriptor<Pet>()
        
        do {
            pets = try context.fetch(descriptor)
        } catch {
            print("Erro ao buscar pets \(error)")
        }
    }
    
    func updatePet(nome: String, idade: Int, peso: Double, foto: Data?, detalhes: String, raca: String, sexo: Sexo, especie: Especie, context: ModelContext, selectedPet: Pet) {
        selectedPet.detalhes = detalhes
        selectedPet.nome = nome
        selectedPet.idade = idade
        selectedPet.peso = peso
        selectedPet.foto = foto
        selectedPet.raca = raca
        selectedPet.sexo = sexo
        selectedPet.especie = especie
        
        do {
            try context.save()
        } catch {
            print("Erro ao salvar pet \(error)")
        }
    }
}
