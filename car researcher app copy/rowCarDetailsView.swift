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
        rowCarDetailsView(carDataArray: .constant(SelectorViewItems(make: .chevy, trans: .automatic, power: .diesel, drive: .awd, size: .large, howManyDoors: .twoDoors)))
    }
}
