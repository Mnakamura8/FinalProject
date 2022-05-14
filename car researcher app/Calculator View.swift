//
//  Calculator View.swift
//  car researcher app
//
//  Created by admin on 5/14/22.


// Takes input fom Selector View, gives output to car show view. Also where the presets live

import SwiftUI

enum Transmission : String, CaseIterable {
    case cvt = "CVT"
    case manual = "Manual"
    case automatic = "Automatic"
}
enum PowerType: String, CaseIterable {
    case electric = "Electric"
    case hybrid = "Hybrid"
    case gas = "Petrol"
    case diesel = "Diesel"  //Ooh we can test this out with VW cars! *Usually Diesel*
}
enum WheelDrive : String, CaseIterable {
    case awd = "AWD"
    case fwd = "FWD"
    case rwd = "RWD"
}
enum CarSize : String, CaseIterable {
    case large = "Spacious Cars"
    case small = "Lightweight Cars"
}
enum DoorNumber : String, CaseIterable {
    case twoDoors = "2 Doors"
    case fourDoors = "4 Doors"
}



struct SelectorViewItems : Identifiable{

    var id = UUID().uuidString
    
    var trans : Transmission
    var power : PowerType
    var drive : WheelDrive
    var size : CarSize
    var howManyDoors : DoorNumber // Display two door cars initial?
    
//    var makeAndModel : String
//    var image : String
   
}



struct Calculator_View: View {
    
    
    @State var carData : [SelectorViewItems] = [
        SelectorViewItems(trans: .cvt, power: .gas, drive: .awd, size: .large, howManyDoors:.fourDoors), //essentially Subaru Outback
    
        SelectorViewItems (trans: .automatic, power: .gas, drive: .fwd, size: .small, howManyDoors: .twoDoors) // Essentially Ford Focus
    
    ]
    
    
    
    var body: some View {
        VStack {
            Text("Logic Demo")
            Text("Wait... Do we need logic if we can filter arrays?? Considering we have a structure for cars, fill in the data, then simply say: display cars that match the best?")
            Text ("Question is now: How do we calculate the best fits???")
        }
    }
}

struct Calculator_View_Previews: PreviewProvider {
    static var previews: some View {
        Calculator_View()
    }
}
