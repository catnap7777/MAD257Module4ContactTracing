//
//  Contact.swift
//  MAD257Module4ContactTracing
//
//  Created by Karen Mathes on 2/13/21.
//  Copyright © 2021 TygerMatrix Software. All rights reserved.
//

import Foundation
import SwiftUI

//.. mapping to covidContactData.json file

struct Contact: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var phone: String
    var city: String
    var state: String
    var notes: String
    var isContacted: Bool
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    
    
}

