//
//  Constants.swift
//  ChatApp
//
//  Created by Ahmd Amr on 20/09/2021.
//  Copyright © 2021 ahmdamr. All rights reserved.
//

import Foundation

struct K {
    static let appName = "💬ChatApp"
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
    
    struct BrandColors {
        static let purple = "BrandPurple"
        static let lightPurple = "BrandLightPurple"
        static let blue = "BrandBlue"
        static let lighBlue = "BrandLightBlue"
    }

}
