//
//  DetailedListViewController.swift
//  ContactList
//
//  Created by Тимофей Юдин on 04.03.2023.
//

import UIKit

class DetailedListViewController: UITableViewController {
    
    let contacts = Contact.getContacts()

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

}

// MARK: UITableViewDataSource
extension DetailedListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "contactPhone", for: indexPath)
            var content = cell.defaultContentConfiguration()
            content.text = contacts[indexPath.row].phoneNumber
            cell.contentConfiguration = content
            
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "contactEmail", for: indexPath)
            var content = cell.defaultContentConfiguration()
            content.text = contacts[indexPath.row].email
            cell.contentConfiguration = content
            
            return cell
        }
    }
}

// MARK: UITableViewDelegate
extension DetailedListViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].fullName
    }
    
    
}
