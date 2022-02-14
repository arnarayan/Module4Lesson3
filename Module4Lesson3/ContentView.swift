//
//  ContentView.swift
//  Module4Lesson3
//
//  Created by Anand Narayan on 2022-02-13.
//

import SwiftUI



struct ContentView: View {
    @State var tabIndex: Int = 2
    var body: some View {
        TabView(selection: $tabIndex){
            Text("This tab's tag is \(tabIndex)").tabItem {
                VStack {
                    Image(systemName: "tortoise")
                    Text("Tab 1")
                }
            }.tag(0)
            VStack{
                Text("This tab's tag is \(tabIndex)")
                Button(action: {
                    tabIndex = 2
                }, label: {
                    Text("Take me to tab 3")
                })
            }
            .tabItem {
                VStack {
                    Image(systemName: "arrow.right")
                    Text("Tab 2")
                }
            }.tag(1)
            VStack {
                Text("This tab's tag is \(tabIndex)")
                Text("This is delete operation")
            }
            .tabItem {
                VStack {
                    Image(systemName: "trash.circle.fill")
                    Text("delete")
                }
            }.tag(2)
        }

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
