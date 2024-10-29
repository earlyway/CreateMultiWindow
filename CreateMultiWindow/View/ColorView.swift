//
//  ColorView.swift
//  CreateMultiWindow
//
//  Created by Tium Solutions on 10/29/24.
//

import SwiftUI

struct ColorView: View {
    
    var viewModel : ColorStringViewModel
    @Binding var colorStringId : UUID?
    
    var body: some View {
        if let colorStringId = colorStringId, let colorString = viewModel.colorStrings.first(where: {$0.id == colorStringId} ) {
            VStack {
                Text(colorString.string)
                    .frame(width: 300, height: 300)
                    .background(colorString.color)
            }
        }
    }
}

//#Preview {
//    ColorView()
//}
