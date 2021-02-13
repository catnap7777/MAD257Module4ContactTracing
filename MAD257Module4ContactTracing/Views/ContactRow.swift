//
//  ContactRow.swift
//  MAD257Module4ContactTracing
//
//  Created by Karen Mathes on 2/13/21.
//  Copyright © 2021 TygerMatrix Software. All rights reserved.
//

import SwiftUI

struct ContactRow: View {
    
    var contact: Contact
    
    var body: some View {
        VStack {
        HStack {
            contact.image
            .resizable()
            .frame(width: 50, height: 50)
            //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text(contact.name)
            Spacer()
//            Text(contact.city)
//            Text(", ")
//            Text(contact.state)
        }
            HStack {
                Text(contact.city)
                Text(", ")
                Text(contact.state)
            }
        }
        .padding()
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
        ContactRow(contact: contacts[0])
        ContactRow(contact: contacts[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}


