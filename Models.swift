//
//  File.swift
//  HomeWork 7
//
//  Created by Дмитрий Бессонов on 07.01.2022.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
