//
//  Calculator View.swift
//  car researcher app
//
//  Created by admin on 5/14/22.


// Takes input fom Selector View, gives output to car show view. Also where the presets live

//Yromo will be in Calculator View adding the Arrays for the cars and the functions to make the 

import SwiftUI

enum CarMake: String { //Add String to add raw value
    case toyota = "Toyota Accord"
    case honda = "Honda"
    case chevy = "Chevy Silverado"
    case subaru = "Subaru"
    case dodgeCaravan
    case ferrari = "Ferrari"
    case tesla = "Tesla"
}


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
    var make : CarMake
    var trans : Transmission
    var power : PowerType
    var drive : WheelDrive
    var size : CarSize
    var howManyDoors : DoorNumber // Display two door cars initial?
    
    //    var makeAndModel : String
    //    var image : String
    
}

struct Calculator_View: View {
    
    
    
    @State var carDataArray : [SelectorViewItems] = [
        //essentially Subaru Outback
        SelectorViewItems(make: .subaru, trans: .cvt, power: .gas, drive: .awd, size: .large, howManyDoors:.fourDoors),
        //Honda
        SelectorViewItems (make: .honda, trans: .automatic, power: .gas, drive: .fwd, size: .small, howManyDoors: .twoDoors),
        
        //MiniVan Dodge Caravan
        SelectorViewItems (make: .dodgeCaravan, trans: .automatic, power: .gas, drive: .awd, size: .small, howManyDoors: .fourDoors),
        
        //Ferrari
        SelectorViewItems (make: .ferrari, trans: .cvt, power: .gas, drive: .fwd, size: .small, howManyDoors: .twoDoors),
        
        //Toyota Camry
        SelectorViewItems(make: .toyota, trans: .automatic, power: .electric, drive: .fwd, size: .small, howManyDoors: .fourDoors),
        //Tesla
        SelectorViewItems(make: .tesla, trans: .automatic, power: .electric, drive: .fwd, size: .small, howManyDoors: .fourDoors),
        //Chevy Silverado
        SelectorViewItems(make: .chevy, trans: .automatic, power: .diesel, drive: .awd, size: .large, howManyDoors: .fourDoors)
        
    ]
    //Might need this filterArray
    @State var filteredArray: [SelectorViewItems] = []

    
//    func filterUpdate() {
//        let cast = ["Vivien", "Marlon", "Kim", "Karl"]
//        let shortNames = cast.filter { $0.count < 5 }
//        print(shortNames)
//    }
    
    var body: some View {
        VStack (spacing: 5){
            ScrollView {
                ForEach($carDataArray) { $carDataArray in
                    VStack(alignment: .leading) {
                        rowCarDetailsView(carDataArray: $carDataArray)
                    }
                    .frame(width: 250, height: 100, alignment: .leading)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue.cornerRadius(10))
                    .padding(5)
                    
                    
                    
                }
            }
            
        }
    }
}

struct Calculator_View_Previews: PreviewProvider {
    static var previews: some View {
        Calculator_View()
    }
}
