//
//  ContactList.swift
//  MAD257Module4ContactTracing
//
//  Created by Karen Mathes on 2/13/21.
//  Copyright © 2021 TygerMatrix Software. All rights reserved.
//

import SwiftUI

struct ContactList: View {
    var body: some View {
        
        List(contacts) { contact in
           
            ContactRow(contact: contact)
            }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList()
    }
}
