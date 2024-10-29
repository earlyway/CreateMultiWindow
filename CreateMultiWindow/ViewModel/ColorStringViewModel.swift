//
//  ColorStringViewModel.swift
//  CreateMultiWindow
//
//  Created by Tium Solutions on 10/29/24.
//

import Foundation

class ColorStringViewModel {
    
    static var stub = [ColorString(id: UUID(), string: "black", color: .black),
                       ColorString(id: UUID(), string: "blue", color: .blue),
                       ColorString(id: UUID(), string: "red", color: .red)]
    
    var colorStrings : [ColorString] = stub
    
    
    
}
//->>ColorListView.swift
