//
//  ContentView.swift
//  MeetZone
//
//  Created by Santos, Rafael Costa on 25/09/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            ForEach(0..<10) { index in
                Card()
                    .padding(.vertical, 5)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
