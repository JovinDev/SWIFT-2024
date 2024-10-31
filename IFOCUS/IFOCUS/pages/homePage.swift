//
//  homePage.swift
//  IFOCUS
//
//  Created by Turma01-8 on 30/10/24.
//

import SwiftUI

struct homePage: View {
    var body: some View {
        VStack{
        
           Text("HELLO")
                .frame(alignment: .center)
            
            HStack(content: {
                
                
                bottomNavBarItem()
            })
        }.navigationBarBackButtonHidden(true)
    }
}

struct bottomNavBarItem: View{
    var body: some View {
    
    TabView{
        
        teste2()
            .tabItem {
                Label("Teste2", image: "home")
                    .frame(width: 10, height: 10)
            }
        
        teste2()
            .tabItem {
                Label("Teste2", image: "home")
                    .frame(width: 10, height: 10)
            }
        teste2()
            .tabItem {
                Label("Teste2", image: "home")
                    .frame(width: 10, height: 10)
            }
        teste2()
            .tabItem {
                Label("Teste2", image: "home")
                    .frame(width: 10, height: 10)
            }
        
    }
}
}

#Preview {
    homePage()
}
