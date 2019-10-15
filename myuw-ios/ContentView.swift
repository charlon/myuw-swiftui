//
//  ContentView.swift
//  myuw-ios
//
//  Created by Charlon Palacay on 10/15/19.
//  Copyright © 2019 Charlon Palacay. All rights reserved.
//

// Follows this tutorial:
// https://www.youtube.com/watch?v=5xvvfHNdB5c

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello World")
                }.navigationBarTitle(Text("MyUW Native"))
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
