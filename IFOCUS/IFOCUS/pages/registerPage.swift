//
//  loginPage.swift
//  IFOCUS
//
//  Created by Turma01-8 on 29/10/24.
//

import SwiftUI

struct registerPage: View {
    // variaveis
    @State private var Email: String = ""
    @State private var Password: String = ""
    
    var body: some View {
        
        ZStack {
            Image("Image").ignoresSafeArea();
            
            VStack{
                Image("imgLogin");
                
                Spacer()
                    .frame(width: 1, height: 100)
                
                VStack{
                    
                    VStack{
                        Text("Faça seu login")
                            .foregroundColor(.white)
                            .font(.custom("montserrat", size: 24))
                            .bold()
                        
                        VStack{
                            
                            TextField("Email", text: $Email)
                                .padding()
                                .frame(width: 300, height: 40)
                                .background()
                                .cornerRadius(10)
                            
                            
                        } .padding()
                        
                        VStack{
                            
                            
                            SecureField("Senha", text: $Password)
                                .padding()
                                .frame(width: 300, height: 40)
                                .background()
                                .cornerRadius(10)
                            
                        } .padding()
                        
                        Button (action:{}){
                            Text("Finalizar")
                            .font(.custom("montserrat", size: 25))
                            .foregroundColor(.white)
                            .frame(width: 145, height: 40)
                            .background(Color.green)
                            .cornerRadius(10)
                        }
                        
                        Spacer()
                            .frame(width: 1, height: 50)
                        
                        HStack{
                            Text("Possui uma conta?")
                                .foregroundColor(.white)
                        NavigationLink(destination: loginPage()) {
                         
                            Text("Entre")
                                .foregroundColor(.aquaGreen)
                        }
                        }
                        }
                        
                    }
                }
            }
        }
    }

    #Preview {
        registerPage()
    }
