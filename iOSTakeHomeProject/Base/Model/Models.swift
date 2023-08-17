//
//  Models.swift
//  iOSTakeHomeProject
//
//  Created by aykut ipek on 12.08.2023.
//

import Foundation


// MARK: - User
struct User: Codable, Equatable {
    let id: Int
    let email, firstName, lastName: String
    let avatar: String
}

// MARK: - Support
struct Support: Codable, Equatable {
    let url: String
    let text: String
}
