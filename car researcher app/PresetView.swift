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
                Text ("Family") // ? , ? , ? , big , 3 or 4, (KIA SOMEWTHING)
                Text ("Sporty") // CVT/Manual , gas , RWD, Small, 2 (MIATA)
                Text ("Economy") // CVT , Electric/Hybrid, ? , ? , ? (Something Economic?)
                
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
