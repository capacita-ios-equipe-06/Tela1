//
//  PetInfoView.swift
//  HomeView
//
//  Created by iredefbmac_19 on 30/07/25.
//

import SwiftUI

struct PetInfoView: View {
    
    @State var pets: [Pet] = [
        Pet(nome: "Fulanyr", idade: 30, peso: 50, foto: nil, detalhes: "Gosta de brincar e passear", raca: "Dachshund", sexo: Sexo.female, especie: Especie.fish)
    ]
    
    var body: some View {
        ZStack (alignment: .bottom) {
            VStack {
                Image("CachorroFoto")
                    .resizable()
                    .scaledToFit()
                    .ignoresSafeArea()
                Spacer()
            }
            ZStack (alignment: .top) {
                RoundedRectangle(cornerRadius: 50)
                    .foregroundStyle(Color.white)
                    .ignoresSafeArea()
                    .frame(height: 570)
                
                VStack {
                    Text(pets[0].nome)
                        .frame(maxWidth: .infinity)
                        .font(Font.custom("Modak", size: 52.84))
                        .foregroundStyle(Color.laranjaArchie)
                    
                    
                    Text(pets[0].raca)
                        .font(Font.custom("ADLaMDisplay-Regular", size: 18.94))
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 356, height: 91)
                            .foregroundStyle(Color.laranjaClaro)
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
                                        Text(verificarMOuF())
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
                                        
                                        Text(pets[0].idade.description)
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
                                        
                                        Text(pets[0].peso.formatted())
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
                        
                        VStack (alignment: .leading) {
                            
                            Text(pets[0].detalhes)
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
                            
                            Text("Antirábica")
                                .font(Font.custom("ADLaMDisplay-Regular", size: 15.12))
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
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 50)
                            .frame(width: 182.64, height: 41)
                            .foregroundStyle(Color.vermelhoApagar)
                            .opacity(0.8)
                        
                        Text("excluir pet")
                            .font(Font.custom("ADLaMDisplay-Regular", size: 21.56))
                            .foregroundStyle(Color.white)
                    }
                }
            }
        }
    }
    func verificarMOuF() -> String {
        if pets[0].sexo == .male {
            return "M"
        }
        else {
            return "F"
        }
    }
}


#Preview {
    PetInfoView()
}
