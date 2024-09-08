//
//  ErrorMessage.swift
//  GithubApi
//
//  Created by Monwar Jahan on 9/8/24.
//

import Foundation

enum GFError : String, Error {
    case invalidUsername = "This username created an invalid request"
    case unableToComplete = "Unable to complete request. Please check internet connection"
    case invalidResponse = "Invalid response from server, please try again"
    case invalidData = "The data recieved from server is invalid, please try again"
}
