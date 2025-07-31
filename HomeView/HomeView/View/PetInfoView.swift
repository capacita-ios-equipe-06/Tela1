//
//  PetInfoView.swift
//  HomeView
//
//  Created by iredefbmac_19 on 30/07/25.
//

import SwiftUI

struct PetInfoView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Image("CachorroFoto")
                    .resizable()
                    .scaledToFit()
                    .ignoresSafeArea()
                Spacer()
            }
            ZStack(alignment: .top) {
                RoundedRectangle(cornerRadius: 50)
                    .foregroundStyle(Color.white)
                    .ignoresSafeArea()
                    .frame(height: 570)

                VStack {
                    Text("Archie")
                        .frame(width: 162, height: 80)
                        .font(Font.custom("Modak", size: 52.84))
                        .foregroundStyle(Color.laranjaArchie)
                    
                    Text("Cachorro de raça Toller")
                        .font(Font.custom("ADLaMDisplay-Regular", size: 18.94))
                        .padding(.top, -30)
                    
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
                                        Text("M")
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
                                        
                                        Text("3")
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
                                        
                                        Text("23")
                                            .font(Font.custom("ADLaMDisplay-Regular", size: 40.72))
                                            .foregroundStyle(Color.white)
                                            .padding(.leading, 30)
                                        
                                    }
                                }
                            }
                        }
                    }
                    
                    ZStack (alignment: .topLeading) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 30)
                                .frame(width: 356, height: 134)
                                .foregroundStyle(Color.laranjaClaro)
                
                            Text("Temperamento: Amoroso, brincalhão e um pouco ciumento; Ama: Bolinhas, dormir de conchinha, banana; Odeia: Aspirador de pó, ficar sozinho.")
                                .font(Font.custom("ADLaMDisplay-Regular", size: 14.08))
                                .frame(width: 318, height: 52)
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
                    }
                }
            }
        }
    }


#Preview {
    PetInfoView()
}
