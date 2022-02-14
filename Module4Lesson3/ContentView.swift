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
            Text("Hello world").tabItem {
                VStack {
                    Image(systemName: "pencil")
                    Text("Edit")
                }
            }.tag(0)
            Text("Hello world2").tabItem {
                VStack {
                    Image(systemName: "heart")
                    Text("save")
                }
            }.tag(1)
            Text("This is delete operation").tabItem {
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
