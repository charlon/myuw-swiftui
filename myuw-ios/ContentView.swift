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
        
        // update navigation background color
        UINavigationBar.appearance().backgroundColor = .green
        
        return NavigationView {
            
            VStack {
                WebView(request: URLRequest(url: URL(string: "https://my-test.s.uw.edu")!))
                .edgesIgnoringSafeArea(.all)
            }
            .navigationBarTitle(Text("MyUW"))
        
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
