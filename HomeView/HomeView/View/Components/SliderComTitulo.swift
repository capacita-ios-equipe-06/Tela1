	//
//  SliderComTitulo.swift
//  HomeView
//
//  Created by iredefbmac_19 on 11/08/25.
//

import SwiftUI

struct SliderComTitulo: View {
    var titulo: String
    @Binding var valor: Double
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(titulo)
            Slider(value: $valor, in: 0...1)
                .accentColor(Color(red: 1, green: 0.39, blue: 0.27))
        }
    }
}
