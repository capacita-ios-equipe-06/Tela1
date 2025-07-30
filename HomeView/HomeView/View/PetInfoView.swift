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
                        .foregroundStyle(Color.orange)

                    Text("Cachorro de raça Toller")
                    
                }
            }
        }
    }
}

#Preview {
    PetInfoView()
}
