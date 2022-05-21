//
//  PresetView.swift
//  car researcher app
//
//  Created by admin on 5/14/22.
//

import SwiftUI

struct PresetView: View {
    var body: some View {
        VStack {
            Text("Presets:")
            
            List { // Trans, Power, Drivetrain, Size, Doors
                ForEach (Presets.allCases, id: \.self) {preset in
                NavigationLink {
                    Calculator_View(carDataArray: SelectorViewItems.carDataArray2.filter{
                        $0.presetWords?.rawValue == preset.rawValue})
                }
            label: {
                Text ("\(preset.rawValue)")
                    .foregroundColor(.black)
            }
            } //Subaru outback, Dodge Carrivan,
                
                
            }
            Text ("Add Preset +")
            
        }
        
        //Text("Figure out whether clicking presets will take you to a filled out version of the selector view, where you then press show car, OR if you just go straight through the calculations and then show the car. It all burns down to whether we want the user to see what criteria falls within the presets. Also to consider: User will be adding presets from somewhere, so they'd already possibly need the ability to see what criteria is in the preset. If all these notes make sense!!")
    }
}

struct PresetView_Previews: PreviewProvider {
    static var previews: some View {
        PresetView()
    }
}
