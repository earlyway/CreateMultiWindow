//
//  ColorListView.swift
//  CreateMultiWindow
//
//  Created by Tium Solutions on 10/29/24.
//

import SwiftUI

struct ColorListView: View {
    
    @Environment(\.openWindow) private var openWindow
    var viewModel : ColorStringViewModel
    
    var body: some View {
        ForEach(viewModel.colorStrings) { colorString in // viewModel 의 colorStrings 에 대해 각각 for 반복해서 Button(label, background가 있는) 을 만들것이다
            Button{
                openWindow(value: colorString.id)
            } label : {
                Text(colorString.string) // 각 버튼의 string text 를 가져와서 labeling
            }
            .background(colorString.color) // 이 라인이 없으면 각 버튼들의 배경색이 사라짐.
            .glassBackgroundEffect() // 투박했던 사각형 버튼이 라운딩 처리된 깔끔한 버튼으로 변경됨.
        }
    }
}

#Preview {
    ColorListView(viewModel : ColorStringViewModel())
}
