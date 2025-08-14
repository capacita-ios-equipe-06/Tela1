//
//  InicioView.swift
//  HomeView
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 28/07/25.
//

import SwiftUI

struct InicioView: View {
    @State var pets: [Pet] = [
        Pet(nome: "Fulanyr", idade: 30, peso: 50, foto: nil, detalhes: "Gosta de brincar e passear", raca: "Dachshund", sexo: Sexo.female, especie: Especie.fish),
        
        Pet(nome: "Claudia", idade: 50, peso: 50, foto: nil, detalhes: "Gosta de brincar e passear", raca: "Dachshund", sexo: Sexo.female, especie: Especie.fish),
        
        Pet(nome: "Roberto", idade: 3, peso: 50, foto: nil, detalhes: "Gosta de brincar e passear", raca: "Dachshund", sexo: Sexo.male, especie: Especie.fish)
    ]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Rectangle()
                .ignoresSafeArea(.all)
                .foregroundStyle(Color.rosaPrincipal)
            
            ZStack(alignment: .top) {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(Color.white)
                    .ignoresSafeArea(.all)
                    .frame(height: 687)
                
                VStack(spacing: 40) {
                    HStack {
                        Image("DogIcon")
                        
                        Spacer()
                        
                        Text("MEUS PETS")
                            .font(.custom("ADLaMDisplay-Regular", size: 26))
                            .foregroundStyle(Color.laranjaPrincipal)
                        
                        Spacer()
                        
                        Button(action: {
                            let newPet = Pet(nome: "Lidia", idade: 30, peso: 50, foto: nil, detalhes: "Gosta de brincar e passear", raca: "Dachshund", sexo: Sexo.female, especie: Especie.fish)
                            
                            pets.append(newPet)
                        }, label: {
                            Image("PlusIcon")
                        })
                        
                    }
                    .padding(.horizontal, 24)
                    
                    
                    VStack {
                        ForEach(pets) { pet in
                            PetCardView(petName: pet.nome)
                        }
                    }
                      
                    
                    
                }
                .padding()
            }
                
        }
    }
}

#Preview {
    InicioView()
}
