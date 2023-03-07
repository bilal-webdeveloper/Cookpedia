//
//  LoginView.swift
//  Cookpedia
//
//  Created by Bilal Dallali on 06/03/2023.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .background(Color.blue)
                .font(.system(size: 175))
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BackButton())
        .padding(24)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
