//
//  InicioView.swift
//  HomeView
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 28/07/25.
//

import SwiftUI
import SwiftData

struct InicioView: View {
    @ObservedObject var petViewModel = PetViewModel.shared
    @Environment(\.modelContext) var context
    
    var body: some View {
        NavigationStack {
        ZStack(alignment: .bottom) {
            LogoView()
            
            ZStack(alignment: .top) {
                RoundedRectangle(cornerRadius: 30)
                    .foregroundStyle(Color.white)
                    .ignoresSafeArea(.all)
                    .frame(height: 680)
                    .shadow(color: Color.vermelhoApagar.opacity(0.6), radius: 38, x: 0, y: -2)
                
                VStack(spacing: 40) {
                    HStack {
                        Image("DogIcon")
                        
                        Spacer()
                        
                        Text("MEUS PETS")
                            .font(.custom("ADLaMDisplay-Regular", size: 26))
                            .foregroundStyle(Color.laranjaPrincipal)
                        
                        Spacer()
                        
                        NavigationLink(destination: {
                            CadastroView()
                        }, label: {
                            Image("PlusIcon")
                        })
                        
                    }
                    .padding(.horizontal, 24)
                    
                    
                    VStack {
                        ForEach(petViewModel.pets) { pet in
                            NavigationLink(destination: PetInfoView(pet: pet), label: {
                                PetCardView(petName: pet.nome)
                            })
                        }
                    }
                    
                }
                .padding()
            }
            
        }
        .onAppear {
            petViewModel.fetchPets(context: context)
        }
    }
    }
}

#Preview {
    InicioView()
}
