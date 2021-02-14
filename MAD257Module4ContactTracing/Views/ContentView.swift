//
//  ContentView.swift
//  MAD257Module4ContactTracing
//
//  Created by Karen Mathes on 2/13/21.
//  Copyright © 2021 TygerMatrix Software. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Text("Hello, World!")
        
        //CircleImage()
        
        ContactList()
        .offset(y: 100)
        //.padding(.bottom, -130)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
