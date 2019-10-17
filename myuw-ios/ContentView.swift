//
//  ContentView.swift
//  myuw-ios
//
//  Created by Charlon Palacay on 10/15/19.
//  Copyright © 2019 Charlon Palacay. All rights reserved.
//

// reading list:
// https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-stacks-using-vstack-and-hstack
// https://www.hackingwithswift.com/quick-start/swiftui/how-to-add-bar-items-to-a-navigation-view

import SwiftUI
import WebKit

// profile view... switch this to a modal presentation
struct ProfileView: View {
    var body: some View {
        VStack {
            // webview container
            WebView(request: URLRequest(url: URL(string: "https://my-test.s.uw.edu/profile/")!))
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle(Text("Profile"))
        }
    }
}

struct ContentView: View {
    
    var body: some View {
                
        // update navigation background color
        // https://sarunw.com/posts/uinavigationbar-changes-in-ios13/
        
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = .systemPink
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
               
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        
        
        // main webview navigation view using webview (youtube tutorial)
        // https://www.youtube.com/watch?v=5xvvfHNdB5c
        return NavigationView {
            VStack {
                // webview container
                WebView(request: URLRequest(url: URL(string: "https://my-test.s.uw.edu")!))
                    .edgesIgnoringSafeArea(.all)
            }
            .navigationBarTitle(Text("MyUW"))
            .navigationBarItems(trailing:
                // navigation link control
                NavigationLink(destination: ProfileView()) {
                    Text("Profile").foregroundColor(.white)
                }
            )
            
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
