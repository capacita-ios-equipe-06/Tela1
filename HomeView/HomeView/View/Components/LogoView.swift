//
//  LogoView.swift
//  HomeView
//
//  Created by iredefbmac_19 on 06/08/25.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        ZStack {
                Rectangle()
                    .ignoresSafeArea()
                    .foregroundStyle(Color.rosaPrincipal)
            
            Image("logo")
                .padding(.top, -380)
            
                //Rectangle()
                    //.foregroundStyle(Color.white)
                    //.frame(width: 3000, height: 300)
                    //.frame(maxHeight: .infinity, alignment: .bottom)
                    //.ignoresSafeArea()
            
            //HStack {
                //Image("pet")
                
                //Spacer()
                
                //Image("4for")
                
                //Spacer()
                
                //Image("you")
            //}
            //.padding(.top, -390)
            //.padding(.horizontal, 200)
        }
    }
}


#Preview {
    LogoView()
}
