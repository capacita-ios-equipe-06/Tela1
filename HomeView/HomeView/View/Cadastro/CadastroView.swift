import SwiftUI
import SwiftData
import PhotosUI

private struct PetFormInfo {
    var nome = ""
    var raca = ""
    var detalhes = ""

    var selectedSexo: Sexo? = nil
    var selectedEspecie: Especie? = nil

    var idadeText = ""
    var pesoText = ""

    var brincalhao: Double = 0.5
    var sociavel: Double = 0.5
    var independente: Double = 0.5

    var v8 = false
    var antirrabica = false
    var giardia = false

    var selectedPhotoItem: PhotosPickerItem? = nil
    var pickedUIImage: UIImage? = nil
    var fotoData: Data? = nil
}

struct CadastroView: View {
    @ObservedObject var petViewModel = PetViewModel.shared
    @Environment(\.modelContext) var context
    
    @Environment(\.dismiss) var dismiss
    
    @State private var form = PetFormInfo()
    
    let petToEdit: Pet?
    
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                
                HStack {
                    Button(action: {
                        dismiss()
                    }, label: {
                        Image(systemName: "chevron.left")
                    })
                    .buttonStyle(PlainButtonStyle())
                    
                    Spacer()
                    Text("CADASTRO")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(Color(red: 1, green: 0.39, blue: 0.27))
                    Spacer()
                    Color.clear.frame(width: 24)
                }
                
                
                HStack(alignment: .top, spacing: 16) {
                    
                    VStack(spacing: 6) {
                        PhotosPicker(selection: $form.selectedPhotoItem, matching: .images, photoLibrary: .shared()) {
                            ZStack {
                                if let img = form.pickedUIImage {
                                    Image(uiImage: img)
                                        .resizable()
                                        .scaledToFill()
                                } else {
                                    if let pet = petToEdit {
                                        if let img = form.pickedUIImage {
                                            Image(uiImage: img)
                                                .resizable()
                                                .scaledToFill()
                                        }
                                    } else {
                                        Image(systemName: "photo")
                                            .resizable()
                                            .scaledToFit()
                                            .foregroundColor(.gray)
                                            .padding(20)
                                    }
                                    
                                }
                            }
                            .frame(width: 100, height: 100)
                            .background(Color(red: 1, green: 0.9, blue: 0.9))
                            .clipShape(Circle())
                            .contentShape(Circle())
                        }
                        .tint(Color(red: 1, green: 0.39, blue: 0.27))
                        
                        Text(form.pickedUIImage == nil ? "Add foto" : "Trocar foto")
                            .foregroundColor(.black)
                            .font(.caption)
                    }
                    
                    VStack(spacing: 10) {
                        CampoTexto(placeholder: "Nome *", texto: $form.nome)
                        
                        Picker("Espécie *", selection: $form.selectedEspecie) {
                            Text("Selecione").tag(Especie?.none)
                            ForEach(Especie.allCases, id: \.self) { especie in
                                Text(especie.displayText).tag(Especie?.some(especie))
                            }
                        }
                        .pickerStyle(.menu)
                        .tint(Color(red: 1, green: 0.39, blue: 0.27))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(12)
                        .background(Color(red: 1, green: 0.9, blue: 0.9))
                        .cornerRadius(12)
                        
                        CampoTexto(placeholder: "Raça *", texto: $form.raca)
                    }
                }
                
                HStack {
                    Picker("Sexo *", selection: $form.selectedSexo) {
                        Text("Selecione").tag(Sexo?.none)
                        ForEach(Sexo.allCases, id: \.self) { sexo in
                            Text(sexo.displayText).tag(Sexo?.some(sexo))
                        }
                    }
                    .pickerStyle(.menu)
                    .tint(Color(red: 1, green: 0.39, blue: 0.27))
                    .frame(maxWidth: .infinity)
                    .padding(12)
                    .background(Color(red: 1, green: 0.9, blue: 0.9))
                    .cornerRadius(12)
                    
                    CampoTexto(placeholder: "Idade *", texto: $form.idadeText)
                    CampoTexto(placeholder: "Peso *", texto: $form.pesoText)
                }
                
                
                TituloSecao(titulo: "Características")
                SliderComTitulo(titulo: "Brincalhão", valor: $form.brincalhao)
                SliderComTitulo(titulo: "Sociável", valor: $form.sociavel)
                SliderComTitulo(titulo: "Independente", valor: $form.independente)
                
                
                TituloSecao(titulo: "Detalhes")
                TextEditor(text: $form.detalhes)
                    .frame(height: 80)
                    .padding(8)
                    .background(Color(red: 1, green: 0.9, blue: 0.9))
                    .cornerRadius(12)
                
                
                TituloSecao(titulo: "Vacinas")
                VStack(alignment: .leading, spacing: 8) {
                    Toggle("V8 ou V9", isOn: $form.v8)
                    Toggle("Antirrábica", isOn: $form.antirrabica)
                    Toggle("Giárdia", isOn: $form.giardia)
                }
                .padding(8)
                .background(Color(red: 1, green: 0.9, blue: 0.9))
                .cornerRadius(12)
                
                
                Button(action: {
                    salvar()
                }) {
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
            .onChange(of: form.selectedPhotoItem) { _, newItem in
                Task {
                    guard let data = try? await newItem?.loadTransferable(type: Data.self),
                          let uiimg = UIImage(data: data) else { return }
                    form.pickedUIImage = uiimg
                    form.fotoData = data
                }
            }
            .onAppear {
                if let pet = petToEdit {
                    form.nome = pet.nome
                    form.raca = pet.raca
                    form.detalhes = pet.detalhes
                    form.selectedSexo = pet.sexo
                    form.selectedEspecie = pet.especie
                    form.idadeText = String(pet.idade)
                    form.pesoText = String(format: "%.2f", pet.peso).replacingOccurrences(of: ".", with: ",")
                    if let data = pet.foto {
                        form.fotoData = data
                        form.pickedUIImage = UIImage(data: data)
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
    
    private func salvar() {
        if let pet = petToEdit {
            guard let sexo = form.selectedSexo,
                  let especie = form.selectedEspecie,
                  let idade = Int(form.idadeText),
                  let peso = Double(form.pesoText.replacingOccurrences(of: ",", with: ".")) else {
                print("Erro ao converter dados")
                return
            }
            
            petViewModel.updatePet(nome: form.nome, idade: idade, peso: peso, foto: form.fotoData, detalhes: form.detalhes, raca: form.raca, sexo: sexo, especie: especie, context: context, selectedPet: pet)
            
            form = PetFormInfo()
            
            dismiss()
        } else {
            guard let sexo = form.selectedSexo,
                  let especie = form.selectedEspecie,
                  let idade = Int(form.idadeText),
                  let peso = Double(form.pesoText.replacingOccurrences(of: ",", with: ".")) else {
                print("Erro ao converter dados")
                return
            }
            
            petViewModel.createPet(nome: form.nome, idade: idade, peso: peso, foto: form.fotoData, detalhes: form.detalhes, raca: form.raca, sexo: sexo, especie: especie, context: context)
            
            form = PetFormInfo()
            
            dismiss()
        }
        
    }
}
