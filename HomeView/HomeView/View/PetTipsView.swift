//
//  PetTipsView.swift
//  HomeView
//
//  Created by iredefbmac_19 on 05/08/25.
//

import SwiftUI

struct Tip: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let imageName: String
    
}

let allTips: [Tip] = [
    Tip(title: "Cada cachorro tem um nariz único - tipo digital nasal!", subtitle: "Curiosidade", imageName: "dog"),
    Tip(title: "Limpe a caixa de areia a cada 2 dias - eles são exigentes!", subtitle: "Dica", imageName: "cat"),
    Tip(title: "Deixe o ambiente seguro e livre de fios - eles adoram roer tudo o que veem pela frente!", subtitle: "Dica", imageName: "rabbit"),
    Tip(title: "Gatos podem dormir até 16 horas por dia!", subtitle: "Curiosidade", imageName: "catsleep"),
]

struct PetTipsView: View {
    @State private var selectedTips: [Tip] = []
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                Text("DICAS\ne curiosidades")
                    .font(.custom("ADLaMDisplay-Regular", size: 26))
                    .foregroundStyle(Color.laranjaPrincipal)
                    .padding(.top,20)
                
                ForEach(selectedTips) { tip in
                    TipCardView(title: tip.title, subtitle: tip.subtitle, imageName: tip.imageName)
                }
            }
            .padding()
        }
        .onAppear {
            selectedTips = Array(allTips.shuffled().prefix(3))
        }
    }
}
    
    #Preview {
        PetTipsView()
    }
