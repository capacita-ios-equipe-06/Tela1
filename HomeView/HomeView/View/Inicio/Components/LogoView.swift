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
        }
    }
}


#Preview {
    LogoView()
}
