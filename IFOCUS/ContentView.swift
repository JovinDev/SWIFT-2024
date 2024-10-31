import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            // Tela Inicial
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Início")
                }
        

            // Tela de Disciplinas
            Text("Disciplinas")
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("Disciplinas")
                }

            // Tela de Simulados
            Text("Simulados")
                .tabItem {
                    Image(systemName: "list.bullet.rectangle")
                    Text("Simulados")
                }

            // Tela de Desempenho
            Text("Desempenho")
                .tabItem {
                    Image(systemName: "chart.bar.fill")
                    Text("Desempenho")
                }
        }.navigationBarBackButtonHidden(true)
        .accentColor(.green) // Define a cor de destaque dos ícones selecionados
    }
}

struct HomeView: View {
    var body: some View {
        VStack(spacing: 20) {
            // Título e Saudação
            VStack (alignment: .leading, spacing: 15) {
                HStack{
                    Text("iFocus")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                    Spacer()
                    // Foto de Perfil
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                        .ignoresSafeArea()
                }
                .padding(.horizontal, 45)
                .padding(.top, -30)
                .padding(.bottom, 15)
                .frame(width: 430, alignment: .topLeading)
                .shadow(color: .black.opacity(0.05), radius: 2, x: 0, y: 2)
                .ignoresSafeArea()
                
                .padding()
            }
            HStack {
                VStack {
                    
                    Text("Bem vindo, Rodrigo")
                        .font(
                        Font.custom("Montserrat", size: 24)
                        .weight(.bold)
                        )
                        .foregroundColor(Color(red: 0.02, green: 0.47, blue: 0.22))
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .padding(.horizontal,10)
                        

                    Text("Você está quase lá!")
                      .font(
                        Font.custom("Montserrat", size: 20)
                          .weight(.bold)
                      )
                      .foregroundColor(Color(red: 0.02, green: 0.47, blue: 0.22))
                      .frame(maxWidth: .infinity, alignment: .topLeading)
                      .padding(.horizontal,10)
                }
                Spacer()
            }

            // Barra de progresso
            VStack(alignment: .leading) {
                Text("Seu progresso na plataforma")
                    .font(.headline)
                
                ProgressView(value: 0.7)
                    .progressViewStyle(LinearProgressViewStyle(tint: .blue))
                    .padding(.top, 5)

                HStack {
                    Label("Português", systemImage: "circle.fill")
                        .foregroundColor(.blue)
                    Label("Matemática", systemImage: "circle.fill")
                        .foregroundColor(.orange)
                    Label("Produção Textual", systemImage: "circle.fill")
                        .foregroundColor(.green)
                }
                .padding(20)
                .frame(height: 40, alignment: .topLeading)
                .cornerRadius(15)
                .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 0)
                .font(.caption)
                .foregroundColor(.gray)
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(10)

            HStack{
                VStack{
                    HStack{
                        Color(.blue)
                    }
                    HStack{
                        Color(.blue)
                    }
                    
                    
                }.padding(.horizontal, 20)
                    .padding(.vertical, 20)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .cornerRadius(15)
                    .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 0)
                
                VStack{
                    Color(.blue)
                }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 20)
                    .frame(width: 149, alignment: .center)
                    .cornerRadius(15)
                    .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 0)
                
            }
                

            // Provas antigas
            VStack {
                Image("banner")
            }
            

            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

