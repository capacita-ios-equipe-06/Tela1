	//
//  CampoTexto.swift
//  HomeView
//
//  Created by iredefbmac_19 on 11/08/25.
//

import SwiftUI

struct CampoTexto: View {
    var placeholder: String
    @Binding var texto: String
    
    var body: some View {
        TextField(placeholder, text: $texto)
            .padding()
            .background(Color(red: 1, green: 0.9, blue: 0.9))	
            .cornerRadius(20)
    }
}

