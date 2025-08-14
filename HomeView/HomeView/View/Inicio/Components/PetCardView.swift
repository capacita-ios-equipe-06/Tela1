//
//  PetCardView.swift
//  HomeView
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 28/07/25.
//

import SwiftUI

struct PetCardView: View {
    let petName: String
    
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 35)
                .frame(width: 163, height: 124)
                .foregroundStyle(.laranjaClaro)
            
            RoundedRectangle(cornerRadius: 35)
                .frame(width: 205, height: 124)
                .foregroundStyle(.laranjaPrincipal)
                .opacity(0.3)
                .overlay(alignment: .top) {
                    ZStack {
                        VStack {
                            RoundedRectangle(cornerRadius: 35)
                                .frame(width: 205, height: 50)
                                .foregroundStyle((Color.laranjaPrincipal))
                                .opacity(0.8)
                            
                            Spacer()
                        }
                        
                        VStack {
                            HStack {
                                Text(petName)
                                    .font(.custom("Modak", size: 32))
                                    .foregroundStyle(Color.white)
                                
                                Spacer()
                            }
                            
                            
                            Spacer()
                            
                            HStack {
                                Spacer()
                                
                                Text("Ver detalhes")
                                    .font(.custom("ADLaMDisplay-Regular", size: 16))
                                    .foregroundStyle(Color.black)
                                    .opacity(0.6)
                            }
                            
                        }
                        .padding(10)
                    }
                }
        }
    }
}

#Preview {
    PetCardView(petName: "Felipe")
}
