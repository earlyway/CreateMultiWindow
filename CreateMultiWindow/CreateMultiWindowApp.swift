//
//  CreateMultiWindowApp.swift
//  CreateMultiWindow
//
//  Created by Tium Solutions on 10/29/24.
//
// 주의점 : info.plist 에서 Enable multiple window, Preferred defauly scene session Role 을 key 로 잡아줘야 정상적으로 새로운 윈도우가 뜲.

import SwiftUI

@main
struct CreateMultiWindowApp: App {
    var body: some Scene {
        
        let viewModel = ColorStringViewModel()
        
        WindowGroup {
            ColorListView(viewModel: viewModel)
        }
        
        WindowGroup(for: ColorString.ID.self) { $colorStringId in   //$ colorStringID 바인딩.-> UUID
            ColorView(viewModel: viewModel, colorStringId: $colorStringId) //ColorView 파일의 변수 참조
        }
        
        .windowStyle(.volumetric)
        
    }
}
