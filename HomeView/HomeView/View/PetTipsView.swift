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
        
        ZStack(alignment: .bottom) {
            LogoView()

        ScrollView {
            VStack (spacing: 0) {
                Color.clear
                    .frame(height: 100)
                
                VStack {
                    ZStack {
                        Image("Star")
                            .padding(.leading, -64)
                        
                        Text("  DICAS\ne curiosidades")
                            .font(.custom("ADLaMDisplay-Regular", size: 26))
                            .multilineTextAlignment(.center)
                            .foregroundStyle(Color.laranjaPrincipal)
                            .padding(.top, 30)
                    }
                    
                    VStack (spacing: 20) {
                        ForEach(selectedTips) { tip in
                            TipCardView(title: tip.title, subtitle: tip.subtitle, imageName: tip.imageName)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 40)
                }
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .foregroundStyle(Color.white)
                        .shadow(color: Color.vermelhoApagar.opacity(0.6), radius: 38, x:0, y:-2)
                )
                //.padding(.horizontal)
            }
        }
    }
        .onAppear {
            selectedTips = Array(allTips.shuffled().prefix(4))
        }
    }
}
        
        #Preview {
            PetTipsView()
        }
