//
//  ContentView.swift
//  tabviewChallenge
//
//  Created by Joshua Goble on 1/9/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var tabIndex = 0
    
    var body: some View {
        
        
        
        TabView (selection: $tabIndex){
            
            // MARK: Tab 1
            Text("This tab's tag is " + String(tabIndex))
                
                .tabItem {
                    VStack{
                        Image(systemName: "allergens")
                    Text("Tab 1")
                    }
                }
                .tag(0)
            
            // MARK: Tab 2
            Button {
                tabIndex = 2
            } label: {
                Text("Take me to tab 3")
            }
            
            .tabItem {
                VStack {
                    Image(systemName: "arrow.uturn.right")
                    Text("Tab 2")
                }
            }
            .tag(1)
            
            // MARK: Tab 3
            VStack {
                List {
                    ForEach (0..<100) { _ in
                        Text("This is tab 3")
                    }
                }
            }
            .tabItem {
                VStack {
                    Image(systemName: "airpodspro")
                    Text("Tab 3")
                }
            }
            .tag(2)
            
            

            
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
