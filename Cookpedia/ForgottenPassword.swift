//
//  ForgottenPassword.swift
//  Cookpedia
//
//  Created by Bilal Dallali on 07/03/2023.
//

import SwiftUI

struct ForgottenPassword: View {
    
    @State private var email = ""
    @FocusState private var emailFieldIsFocused: Bool
    
    var body: some View {
        VStack {
            Text("forgotten password")
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ForgottenPassword_Previews: PreviewProvider {
    static var previews: some View {
        ForgottenPassword()
    }
}
