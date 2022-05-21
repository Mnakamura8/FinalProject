//
//  WelcomeView.swift
//  car researcher app
//
//  Created by admin on 5/14/22.
//

//yromo I will be working on this view

import SwiftUI


struct WelcomeView: View {
    let car: SelectorViewItems
    
    var body: some View {
        VStack (spacing: 40) {
            VStack (spacing: 5) {
                Text("Welcome to")
                    .mainTitle()
                
                Text("Car.Info")
                    .mainTitle()
                
                //This will add the image on the center of the page
                Image("tesla")
                    .resizable()
                    .scaledToFit()
                .padding()
           
                Text("Find Car Information")
                    .secondTextStyle()
                Text("Click Below ")
                    .secondTextStyle()
                
            }
            
        }
    }
}


struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(car: SelectorViewItems(make: .dodgeCaravan, trans: .automatic, power: .gas, drive: .awd, size: .large, howManyDoors: .fourDoors))
    }
}
