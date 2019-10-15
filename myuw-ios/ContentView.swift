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
            
            // update top bar background color
            
            // remove bottom bar spacing
            GeometryReader { geometry in
                VStack {
                    WebView(request: URLRequest(url: URL(string: "https://my-test.s.uw.edu")!))
                }
                .navigationBarTitle(Text("MyUW"))
            }.edgesIgnoringSafeArea(.all)
        }
    }
}

struct WebView: UIViewRepresentable {
    let request: URLRequest
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
    
    
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
