//
//  ViewController.swift
//  HomeWork 7
//
//  Created by Дмитрий Бессонов on 07.01.2022.
//

import UIKit

class ContactDetailsViewController: UIViewController {

    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        phoneNumberLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"
    }


}

