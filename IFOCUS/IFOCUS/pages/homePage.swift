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
            //        func navigationBarBackButtonHidden(_ hidesBackButton: Bool = true) -> some View
            TabView{
                self.homePage()
                    .tabItem {
                        Label("Home", image: "imgLogin") }
                
                
                
            }
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    homePage()
}
