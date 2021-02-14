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
                    .offset(y: 50)
                    .padding(.bottom, -130)

                VStack(alignment: .leading) {
                    Text(contact.name)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.primary)

                    HStack {
                        Text(contact.city)
                        Spacer()
                        Text(contact.state)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                    Divider()

                    Text("Phone:  \(contact.phone)")
                        .font(.title)
                        .foregroundColor(.blue)
                    Text(contact.notes)
                }
                .offset(y:250)
                .padding()

        }
        .navigationBarTitle(contact.name)
//        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ContactDetail_Previews: PreviewProvider {
    static var previews: some View {
//        ContactDetail()
        ContactDetail(contact: contacts[0])
        
    }
}
