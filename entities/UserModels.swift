// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let userModels = try UserModels(json)

import Foundation

// MARK: - UserModels
struct UserModels {
    let address: Address
    let age: Int
    let bankAccount: BankAccount
    let createdAt, deletedAt: Date
    let email, name, role: String
    let updatedAt: Date
}

// MARK: - Address
struct Address {
    let city, state, street, zip: String
}

// MARK: - BankAccount
struct BankAccount {
    let accountNumber: String
    let balance: Double
    let currency: String
}
