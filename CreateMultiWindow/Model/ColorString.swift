//
//  ColorString.swift
//  CreateMultiWindow
//
//  Created by Tium Solutions on 10/29/24.
//

import Foundation
import SwiftUI

struct ColorString : Identifiable {
    var id : UUID
    var string : String
    var color : Color //view 를 만들기 위한 정보 3개 id, string, color
    
    init(id: UUID, string: String, color: Color) {
        self.id = id
        self.string = string
        self.color = color
    }
}

// -> ColorStringViewModel.swift
