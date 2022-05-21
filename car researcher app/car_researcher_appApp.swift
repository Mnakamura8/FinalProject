//
//  car_researcher_appApp.swift
//  car researcher app
//
//  Created by admin on 5/13/22.
//

import SwiftUI

@main
struct car_researcher_appApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(carData: .constant(SelectorViewItems(make:.ferrari, trans: .automatic, power: .diesel, drive: .awd, size: .large, howManyDoors: .fourDoors)))
        }
    }
}
