//
//  rowCarDetailsView.swift
//  car researcher app
//
//  Created by admin on 5/17/22.
//

import SwiftUI

struct rowCarDetailsView: View {
    @Binding var carDataArray: SelectorViewItems
    var body: some View {
        VStack (alignment: .leading) {
            Image(carDataArray.make.rawValue) //The one that'll work when we set the stuff up.
            Image("Chevy_Silverado") //Simply comment this out when we activate the line above.
                .resizable()
                .scaledToFit()
                .padding()
            
//            Text("Make: \(carDataArray.make.rawValue)")
            Text("\(carDataArray.make.rawValue)")
            Text("Transmission: \(carDataArray.trans.rawValue)")
            Text("Power: \(carDataArray.power.rawValue)")
            Text("Drive: \(carDataArray.drive.rawValue)")
            Text("Size: \(carDataArray.size.rawValue)")
            Text("Doors: \(carDataArray.howManyDoors.rawValue)")
//            Image(carDataArray.make.rawValue)
//                .resizable()
//                .scaledToFit()
//            .padding()
        }
    }
}

struct rowCarDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        rowCarDetailsView(carDataArray: .constant(SelectorViewItems(make: .chevy, trans: .automatic, power: .diesel, drive: .awd, size: .large, howManyDoors: .twoDoors))) //Considering this, I guess the 'preset words' is an optional anyway. Just a note to remember in case of unwrapping issues. 
    }
}
