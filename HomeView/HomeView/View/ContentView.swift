import SwiftUI

struct ContentView: View {
    @State var pets: [Pet] = [
        Pet(nome: "Fulanyr", idade: 30, peso: 50, foto: nil, detalhes: "Gosta de brincar e passear", raca: "Dachshund", sexo: Sexo.female, especie: Especie.fish),
        
        Pet(nome: "Claudia", idade: 50, peso: 50, foto: nil, detalhes: "Gosta de brincar e passear", raca: "Dachshund", sexo: Sexo.female, especie: Especie.fish),
        
        Pet(nome: "Roberto", idade: 3, peso: 50, foto: nil, detalhes: "Gosta de brincar e passear", raca: "Dachshund", sexo: Sexo.male, especie: Especie.fish)
    ]
    
    var body: some View {
        // desatualizado
        NavigationView {
            VStack(spacing: 0) {
                VStack {
                    HStack(spacing: 16) {
                        Spacer()
                        Text("PET4YOU")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Spacer()
                        Button(action: {}) {
                            Image(systemName: "line.horizontal.3")
                                .foregroundColor(.white)
                                .font(.title2)
                        }
                    }
                }
                .frame(height: 100)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color(red: 1.0, green: 0.6, blue: 0.6),
                            Color(red: 1.0, green: 0.5, blue: 0.5)
                        ]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )

                ScrollView {
                    VStack(spacing: 20) {
                        VStack(spacing: 15) {
                            HStack {
                                Text("Meus Pets")
                                    .font(.custom("Modak", size: 32))
                                    .foregroundColor(Color(red: 1.0, green: 0.4, blue: 0.3))
                                Spacer()
                            }

                            ZStack {
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color(red: 1.0, green: 0.7, blue: 0.6))
                                    .frame(height: 150)

                                Text("🐶 🐱")
                                    .font(.system(size: 100, weight: .bold))
                            }
                        }

                        VStack(spacing: 15) {
                            HStack {
                                Text("Dicas e Curiosidades")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 1.0, green: 0.4, blue: 0.3))
                                Spacer()
                            }

                            ZStack {
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(
                                        LinearGradient(
                                            gradient: Gradient(colors: [
                                                Color(red: 0.4, green: 0.6, blue: 0.8),
                                                Color(red: 0.3, green: 0.5, blue: 0.7)
                                            ]),
                                            startPoint: .topLeading,
                                            endPoint: .bottomTrailing
                                        )
                                    )
                                    .frame(height: 130)

                                HStack(spacing: 20) {
                                    VStack(alignment: .leading, spacing: 6) {
                                        Text("Curiosidades")
                                            .font(.caption)
                                            .foregroundColor(.white.opacity(0.8))
                                            .padding(6)
                                            .background(Color.white.opacity(0.2))
                                            .cornerRadius(8)

                                        Text("Cachorros têm um nariz único")
                                            .font(.system(size: 15))
                                            .foregroundColor(.white)
                                            .fixedSize(horizontal: false, vertical: true)

                                        Spacer()
                                    }

                                    Spacer()

                                    ZStack {
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.white.opacity(0.2))
                                            .frame(width: 80, height: 80)

                                        Text("🐕")
                                            .font(.system(size: 30))
                                    }
                                }
                                .padding(16)
                            }

                            ZStack {
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(
                                        LinearGradient(
                                            gradient: Gradient(colors: [
                                                Color(red: 0.5, green: 0.8, blue: 0.8),
                                                Color(red: 0.4, green: 0.7, blue: 0.7)
                                            ]),
                                            startPoint: .topLeading,
                                            endPoint: .bottomTrailing
                                        )
                                    )
                                    .frame(height: 130)

                                HStack(spacing: 20) {
                                    VStack(alignment: .leading, spacing: 6) {
                                        Text("Curiosidades")
                                            .font(.caption)
                                            .foregroundColor(.white.opacity(0.8))
                                            .padding(6)
                                            .background(Color.white.opacity(0.2))
                                            .cornerRadius(8)

                                        Text("Gatos devem tomar banho? Sim ou Não?")
                                            .font(.title3)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .fixedSize(horizontal: false, vertical: true)

                                        Spacer()
                                    }

                                    Spacer()

                                    ZStack {
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.white.opacity(0.2))
                                            .frame(width: 80, height: 80)

                                        Text("🐱")
                                            .font(.system(size: 30))
                                    }
                                }
                                .padding(16)
                            }
                        }

                        Spacer(minLength: 100)
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
                }

                Spacer()

                TabBar()
            
            }
            .navigationBarHidden(true)
        }
    }
}


#Preview {
    ContentView()
}
