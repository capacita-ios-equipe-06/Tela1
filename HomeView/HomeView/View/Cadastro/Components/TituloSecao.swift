//
//  TituloSecao.swift
//  HomeView
//
//  Created by iredefbmac_19 on 11/08/25.
//

import SwiftUI

struct TituloSecao: View {
    var titulo: String
    var body: some View {
        Text(titulo)
            .font(.system(size: 14, weight: .bold))
            .foregroundColor(.white)
            .padding(.horizontal, 10)
            .padding(.vertical, 4)
            .background(Color(red: 1, green: 0.39, blue: 0.27))
            .cornerRadius(10)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}
