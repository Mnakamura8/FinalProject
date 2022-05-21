//
//  Extensions.swift
//  car researcher app
//
//  Created by admin on 5/15/22.
//

import Foundation
import SwiftUI


extension Text {
    func mainTitle() -> some View {
        self .font(.title)
            .fontWeight(.heavy)
            .foregroundColor(.blue)
    }
    
    func secondTextStyle() -> some View {
        self  .fontWeight(.medium)
            .foregroundColor(.blue)
            .font(.title3)
            .multilineTextAlignment(.center)
            .padding(.leading)
    }
    
    

}


