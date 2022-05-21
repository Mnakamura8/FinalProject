//
//  Car Show View.swift
//  car researcher app
//
//  Created by admin on 5/13/22.

// takes output from SelectorView, runs through Calculator View, and outputs image from here.

import SwiftUI

struct CarStuffIGuess {
    var carName : String
    var carImage : String
}
struct Car_Show_View: View {
    @State var dataSource : String = ""
    
    var body: some View {
        List {
            Text("Car Name Car Image")
        
        }
      
    }
}

struct Car_Show_View_Previews: PreviewProvider {
    static var previews: some View {
        Car_Show_View()
    }
}
