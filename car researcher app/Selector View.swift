//
//  Selector View.swift
//  car researcher app
//
//  Created by admin on 5/13/22.

// Only meant to display when selecting! 

import SwiftUI



struct Selector_View: View {
    
    @State var trans = 0
    @State var energyType = 0
    @State var wheelDrive = 0
    @State var carSize = 0
    @State var doorNumber = 0
    
    
    var body: some View {
        
        VStack {
            VStack {
                Text ("What are you looking for in a car?")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                
                Picker("Transmission Type", selection: $trans) {
                    ForEach(Transmission.allCases, id:\.self) { transmissions in
                        Text("\(transmissions.rawValue)")
                            .tag(Transmission.allCases.firstIndex(of: transmissions)!)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                Picker("Energy Type", selection: $energyType) {
                    ForEach(PowerType.allCases, id:\.self) { power in
                        Text("\(power.rawValue)")
                            .tag(PowerType.allCases.firstIndex(of: power)!)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                
                Picker("Drive Train" , selection: $wheelDrive) {
                    ForEach(WheelDrive.allCases, id:\.self) { drive in
                        Text("\(drive.rawValue)")
                            .tag(WheelDrive.allCases.firstIndex(of: drive)!)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                Picker ("Size", selection: $carSize) {
                    ForEach(CarSize.allCases, id:\.self) { size in
                        Text("\(size.rawValue)")
                            .tag(CarSize.allCases.firstIndex(of: size)!)
                    }
                }
                
                //
                Picker("Door Number", selection: $doorNumber) {
                    ForEach(DoorNumber.allCases, id:\.self) { doors in
                        Text("\(doors.rawValue)")
                            .tag(DoorNumber.allCases.firstIndex(of: doors)!)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                
            }.pickerStyle(SegmentedPickerStyle())
                .padding()
            
            
            
            NavigationLink{
                Car_Show_View()
            } label: {
                
                ZStack {
                    Rectangle()
                        .frame(width: 120, height: 30)
                        .foregroundColor(.blue)
                        .cornerRadius(20)
                    Text ("Show Cars!")
                        .foregroundColor(.black)
                }
            }
        }
    }
}


struct Selector_View_Previews: PreviewProvider {
    static var previews: some View {
        Selector_View()
    }
}
