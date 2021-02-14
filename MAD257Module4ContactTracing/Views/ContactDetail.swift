//
//  ContactDetail.swift
//  MAD257Module4ContactTracing
//
//  Created by Karen Mathes on 2/13/21.
//  Copyright © 2021 TygerMatrix Software. All rights reserved.
//

import SwiftUI

struct ContactDetail: View {
    
    var contact: Contact

    var body: some View {
        
        ScrollView {

            CircleImage(image: contact.image)
                    .offset(y: 25)
                    .padding(.bottom, -150)

                VStack(alignment: .leading) {
                    Text(contact.name)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.primary)

                    HStack {
                        Text(contact.city)
                        .italic()
                        Spacer()
                        Text(contact.state)
                        .italic()
                    }
                    .font(.headline)
                    .foregroundColor(.secondary)

                    Divider()

                    Text("Phone:  \(contact.phone)")
                        .font(.title)
                        .foregroundColor(.blue)
                    Text(contact.notes)
                }
                .offset(y:225)
                .padding()

        }
        
         //let y = cont(contacted: contact.isContacted)
        
        //.navigationBarTitle(contact.name)
            .navigationBarTitle("Contacted?: \(String(contact.isContacted))", displayMode: .inline)
        
//        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ContactDetail_Previews: PreviewProvider {
    static var previews: some View {
//        ContactDetail()
        ContactDetail(contact: contacts[0])
        
    }
}

func cont(contacted: Bool) -> String {
    var x = contacted
    var wasContacted: String = ""
    if x {
        wasContacted = "Contacted"
    } else {
        wasContacted = "Not Contacted"
    }
    return wasContacted
}
