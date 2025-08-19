import SwiftUI

struct CadastroView: View {
    @State private var nome = ""
    @State private var especie = ""
    @State private var raca = ""
    @State private var sexo = ""
    @State private var idade = ""
    @State private var peso = ""
    
    @State private var brincalhao: Double = 0.5
    @State private var sociavel: Double = 0.5
    @State private var independente: Double = 0.5
    
    @State private var detalhes = ""
    
    @State private var v8 = false
    @State private var antirrabica = false
    @State private var giardia = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                
                
                HStack {
                    Image(systemName: "chevron.left")
                    Spacer()
                    Text("CADASTRO")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(Color(red: 1, green: 0.39, blue: 0.27))
                    Spacer()
                    Color.clear.frame(width: 24)
                }
                
            
                HStack(alignment: .top, spacing: 16) {
                    
                    VStack {
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.gray)
                        Text("Add foto")
                            .foregroundColor(.black)
                    }
                    .frame(width: 100, height: 100)	
                    .background(Color(red: 1, green: 0.9, blue: 0.9))
                    .cornerRadius(50)
                    
                    VStack(spacing: 10) {
                        CampoTexto(placeholder: "Nome *", texto: $nome)
                        CampoTexto(placeholder: "Espécie *", texto: $especie)
                        CampoTexto(placeholder: "Raça *", texto: $raca)
                    }
                }
                
                HStack {
                    CampoTexto(placeholder: "Sexo *", texto: $sexo)
                    CampoTexto(placeholder: "Idade *", texto: $idade)
                    CampoTexto(placeholder: "Peso *", texto: $peso)
                }
                
                
                TituloSecao(titulo: "Características")
                SliderComTitulo(titulo: "Brincalhão", valor: $brincalhao)
                SliderComTitulo(titulo: "Sociável", valor: $sociavel)
                SliderComTitulo(titulo: "Independente", valor: $independente)
                
      
                TituloSecao(titulo: "Detalhes")
                TextEditor(text: $detalhes)
                    .frame(height: 80)
                    .padding(8)
                    .background(Color(red: 1, green: 0.9, blue: 0.9))
                    .cornerRadius(12)
                
                
                TituloSecao(titulo: "Vacinas")
                VStack(alignment: .leading, spacing: 8) {
                    Toggle("V8 ou V9", isOn: $v8)
                    Toggle("Antirrábica", isOn: $antirrabica)
                    Toggle("Giárdia", isOn: $giardia)
                }
                .padding(8)
                .background(Color(red: 1, green: 0.9, blue: 0.9))
                .cornerRadius(12)
                
               		
                Button(action: {}) {
                    HStack {
                        Image(systemName: "tray.and.arrow.down")
                        Text("SALVAR")
                            .fontWeight(.bold)
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color(red: 0.47, green: 0.8, blue: 0.63))
                    .cornerRadius(30)
                }
                .padding(.top, 10)
            }
            .padding()
        }
    }
}

struct CadastroView_Previews: PreviewProvider {
    static var previews: some View {
        CadastroView()
    }
}
