//
//  BackButton.swift
//  Cookpedia
//
//  Created by Bilal Dallali on 07/03/2023.
//

import SwiftUI

struct BackButton: View {
    var body: some View {
        Button {
            self.presentationMode.wrappedValue.dismiss()
        } label: {
            <#code#>
        }

    }
}

struct BackButton_Previews: PreviewProvider {
    static var previews: some View {
        BackButton()
            .previewLayout(.sizeThatFits)
    }
}
