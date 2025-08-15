//
//  PetInfoView.swift
//  HomeView
//
//  Created by iredefbmac_19 on 30/07/25.
//

import SwiftUI
import SwiftData

struct PetInfoView: View {
    @ObservedObject var petViewModel = PetViewModel.shared
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) var context
    
    @State var showDeleteAlert: Bool = false
    
    let pet: Pet
    
    var body: some View {
        ZStack (alignment: .bottom) {
            ZStack (alignment: .topTrailing) {
                VStack {
                    if let petData = pet.foto {
                        if let img = UIImage(data: petData) {
                            Image(uiImage: img)
                                .resizable()
                                .scaledToFit()
                                .ignoresSafeArea()
                        }
                    }
                    else {
                       Image("CachorroFoto")
                           .resizable()
                           .scaledToFit()
                           .ignoresSafeArea()
                   }
                    
                    Spacer()
                }
                
                Button (action: {
                    dismiss()
                }) {
                    ZStack {
                        Image("Chevron left")
                            .padding(.trailing, 350)
                            
                    }
                }
                
                NavigationLink(destination: CadastroView(petToEdit: pet), label: {
                    ZStack {
                        Image("Edit")
                            .padding(.trailing, 60)
                            .padding(.top, 5)
                        
                    }
                })
                
                Button(action: {
                    showDeleteAlert = true
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 41, height: 41)
                            .padding(.trailing, 10)
                            .foregroundStyle(Color.vermelhoApagar)
                            .opacity(0.80)

                        Image("Trash")
                            .padding(.trailing, 10)
                            .frame(width: 32, height: 32)
                    }
                }
            }
            
            
            
            ZStack (alignment: .top) {
                RoundedRectangle(cornerRadius: 50)
                    .foregroundStyle(Color.white)
                    .ignoresSafeArea()
                    .frame(height: 570)
                

                VStack {
                    Text(pet.nome)
                        .lineLimit(1)
                        .frame(maxWidth: .infinity)
                        .font(Font.custom("Modak", size: 52.84))
                        .foregroundStyle(Color.laranjaArchie)
                    
                    
                    Text(pet.raca)
                        .font(Font.custom("ADLaMDisplay-Regular", size: 18.94))
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 356, height: 91)
                            .foregroundStyle(Color.laranjaClaro)
                            .opacity(0.3)
                        VStack {
                            HStack {
                                VStack {
                                    Text("sexo")
                                        .font(Font.custom("ADLaMDisplay-Regular", size: 29.21))
                                        .foregroundStyle(Color.laranjaArchie)
                                        .padding(.top, 35)
                                        .padding(.trailing, 30)
                                    ZStack {
                                        
                                        Circle()
                                            .frame(width: 64.5, height: 66.26)
                                            .foregroundStyle(Color.laranjaPrincipal)
                                            .padding(.trailing, 30)
                                        Text(verificarMOuF(pet: pet))
                                            .font(Font.custom("ADLaMDisplay-Regular", size: 40.72))
                                            .padding(.trailing, 30)
                                            .foregroundStyle(Color.white)
                                    }
                                    
                                }
                                
                                
                                VStack {
                                    Text("idade")
                                        .font(Font.custom("ADLaMDisplay-Regular", size: 29.21))
                                        .foregroundStyle(Color.laranjaArchie)
                                        .padding(.top, 35)
                                    
                                    ZStack {
                                        Circle()
                                            .frame(width: 64.5, height: 66.26)
                                            .foregroundStyle(Color.laranjaPrincipal)
                                        
                                        Text(pet.idade.description)
                                            .font(Font.custom("ADLaMDisplay-Regular", size: 40.72))
                                            .foregroundStyle(Color.white)
                                        
                                    }
                                }
                                
                                VStack {
                                    Text("peso")
                                        .font(Font.custom("ADLaMDisplay-Regular", size: 29.21))
                                        .foregroundStyle(Color.laranjaArchie)
                                        .padding(.leading, 30)
                                        .padding(.top, 35)
                                    
                                    
                                    ZStack{
                                        
                                        Circle()
                                            .frame(width: 64.5, height: 66.26)
                                            .foregroundStyle(Color.laranjaPrincipal)
                                            .padding(.leading, 30)
                                        
                                        Text(pet.peso.formatted())
                                            .font(Font.custom("ADLaMDisplay-Regular", size: 40.72))
                                            .foregroundStyle(Color.white)
                                            .padding(.leading, 30)
                                        
                                    }
                                }
                            }
                        }
                    }
                    
                    ZStack (alignment: .topLeading) {
                        
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: 356, height: 134)
                            .foregroundStyle(Color.laranjaClaro)
                            .opacity(0.3)
                        
                        ZStack (alignment: .leading) {
                            
                            Text(pet.detalhes)
                                .font(Font.custom("ADLaMDisplay-Regular", size: 14.08))
                                .frame(width: 318, height: 172)
                        }
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 30)
                                .frame(width: 185, height: 44)
                                .foregroundStyle(Color.laranjaPrincipal)
                            
                            Text("DETALHES")
                                .font(Font.custom("Modak", size: 27.76))
                                .foregroundStyle(Color.white)
                        }
                    }
                    ZStack (alignment: .topLeading) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 30)
                                .frame(width: 356, height: 85)
                                .foregroundStyle(Color.laranjaClaro)
                                .padding(.top, -30)
                                .opacity(0.3)
                            
                            ZStack (alignment: .leading){
                                
                                Text("Antirábica")
                                    .font(Font.custom("ADLaMDisplay-Regular", size: 15.12))
                                    .padding(.top, -20)
                            }
                        }
                        ZStack {
                            RoundedRectangle(cornerRadius: 30)
                                .frame(width: 146.6, height: 44.19)
                                .foregroundStyle(Color.laranjaPrincipal)
                                .padding(.top, -30)
                            
                            Text("VACINAS")
                                .font(Font.custom("Modak", size: 27.76))
                                .foregroundStyle(Color.white)
                                .padding(.top, -30)
                            
                            
                            }
                        }
                    }
                }
            }
        .navigationBarBackButtonHidden(true)
        .alert("Deseja deletar esse pet? Essa ação é irreversível!", isPresented: $showDeleteAlert) {
            
            Button("Deletar", role: .destructive) {
                petViewModel.removePet(selectedPet: pet, context: context)
                dismiss()
            }
            
            Button("Cancelar", role: .cancel) {}
            
        }
        }
    }
    private func verificarMOuF(pet: Pet) -> String {
        if pet.sexo == .male {
            return "M"
        }
        else {
            return "F"
        }
    }

