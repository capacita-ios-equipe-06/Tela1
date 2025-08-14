//
//  TipCardView.swift
//  HomeView
//
//  Created by iredefbmac_19 on 05/08/25.
//

import SwiftUI

struct TipCardView: View {
    let title: String
    let subtitle: String
    let imageName: String
    
    var body: some View {
        ZStack(alignment: .top) {
            Image(imageName)
                .resizable()
                //.scaledToFit()
                .frame(width: 367, height: 187)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .clipped()
            
            VStack(alignment: .leading, spacing: 4) {
                Text(subtitle)
                    .font(.custom("ADLaMDisplay-Regular", size: 15))
                    .foregroundStyle(Color.white)
                
                Text(title)
                    .font(.custom("ADLaMDisplay-Regular", size: 20))
                    .fontWeight(.bold)
                    .foregroundStyle(Color.white)
            }
            //Spacer()
        }
        .padding()
        .shadow(radius: 10)
    }
}

#Preview {
    TipCardView(title: "Nariz único", subtitle: "Curiosidade", imageName: "dog")
}
