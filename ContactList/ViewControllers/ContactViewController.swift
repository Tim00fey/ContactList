//
//  ViewController.swift
//  ContactList
//
//  Created by Тимофей Юдин on 03.03.2023.
//

import UIKit

class ContactViewController: UITableViewController {
    
    let contacts = Contact.getContacts()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVC = segue.destination as? AboutContactViewController
        detailVC?.contact = sender as? Contact
    }


}

// MARK: UITableViewDataSource
extension ContactViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = contacts[indexPath.row]
        content.text = contact.fullName
        cell.contentConfiguration = content
        return cell
    }
}

// MARK: UITabelViewDelegate
extension ContactViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let contact = contacts[indexPath.row]
        performSegue(withIdentifier: "goToInfo", sender: contact)
    }
}

