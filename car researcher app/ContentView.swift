//
//  ContentView.swift
//  car researcher app
//
//  Created by admin on 5/13/22.
// Questino for class: Should I put the calculations somewhere else? How do I know where to put them? My assumption is to put this in the calculator view, so that we won't have to think about these enums until after we get past the selector view.

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView {
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
            }.navigationTitle("Home")
        }
    }
    func doSomething() {
        
    }
    // this is some new textr
    // foo bar
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
