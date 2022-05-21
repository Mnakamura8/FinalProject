//
//  ContentView.swift
//  car researcher app
//
//  Created by admin on 5/13/22.
// Questino for class: Should I put the calculations somewhere else? How do I know where to put them? My assumption is to put this in the calculator view, so that we won't have to think about these enums until after we get past the selector view.

import SwiftUI


struct ContentView: View {
    @Binding var carData: SelectorViewItems
    var body: some View {
        VStack {
            
            NavigationView {
                VStack (spacing: 40) {
                    VStack (spacing: 5) {
                        Text("Find your dream car")
                            .foregroundColor(.black)
                            .mainTitle()
                            
                        Text("Car Researcher")
                            .foregroundColor(.black)
                            .mainTitle()
                        
                        Image("Subaru_Outback")
                            .resizable()
                            .scaledToFit()
                        
                        Text("Enter your Criteria or")
                            .foregroundColor(.black)
                            .secondTextStyle()
                        Text("Select from Presets Below!")
                            .foregroundColor(.black)
                            .secondTextStyle()
                        
                        List {
                            NavigationLink {
                                Selector_View()
                            }
                        label: {
                            Text("Search")
                                .padding()
                        }
                            NavigationLink {
                                PresetView()
                            }
                        label: {
                            Text ("Presets")
                                .padding ()
                        }
                        }
                    }
                }
            }
            
        }
        
    }
    func doSomething() {
        
    }
    // this is some new textr
    // foo bar
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(carData: .constant(SelectorViewItems(make:.ferrari, trans: .automatic, power: .diesel, drive: .awd, size: .large, howManyDoors: .fourDoors)))
    }
}
