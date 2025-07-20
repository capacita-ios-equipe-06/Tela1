//
//  TabBar.swift
//  HomeView
//
//  Created by iredefbmac_19 on 11/07/25.
//
import SwiftUI

struct TabBar: View {
    var body: some View {
        HStack {
            TabBarItem(icon: "star", title: "Dicas", isSelected: false)
            Spacer()
            TabBarItem(icon: "house.fill", title: "Início", isSelected: true)
            Spacer()
            TabBarItem(icon: "gearshape", title: "Configurações", isSelected: false)
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 12)
        .background(Color.white)
        .shadow(color: .gray.opacity(0.3), radius: 10, x: 0, y: -5)
    }
}

struct TabBarItem: View {
    let icon: String
    let title: String
    let isSelected: Bool

    var body: some View {
        VStack(spacing: 5) {
            Image(systemName: icon)
                .font(.system(size: 22))
                .foregroundColor(isSelected ? Color(red: 1.0, green: 0.4, blue: 0.3) : .gray)

            Text(title)
                .font(.caption)
                .foregroundColor(isSelected ? Color(red: 1.0, green: 0.4, blue: 0.3) : .gray)
        }
    }
}
