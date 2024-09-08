//
//  User.swift
//  GithubApi
//
//  Created by Monwar Jahan on 9/7/24.
//

import Foundation

struct User: Codable {
    
    var login: String
    var avatarUrl: String
    var name: String
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var htmlUrl: String
    var followers: Int
    var following: Int
    var createdAt: String
}
