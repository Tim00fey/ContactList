//
//  AboutContactViewController.swift
//  ContactList
//
//  Created by Тимофей Юдин on 03.03.2023.
//

import UIKit

class AboutContactViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var navigationC: UINavigationItem!
    
    var contact: Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationC.title = contact.fullName
        
        phoneLabel.text = "Phone: \(contact.phoneNumber)"
        emailLabel.text = "Email: \(contact.email)"
    }


}
