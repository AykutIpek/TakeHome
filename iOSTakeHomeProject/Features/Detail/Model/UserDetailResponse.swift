//
//  UserDetailResponse.swift
//  iOSTakeHomeProject
//
//  Created by aykut ipek on 12.08.2023.
//

import Foundation

// MARK: - UserDetailResponse
struct UserDetailResponse: Codable, Equatable {
    let data: User
    let support: Support
}

