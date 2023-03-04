//
//  Contact.swift
//  ContactList
//
//  Created by Тимофей Юдин on 03.03.2023.
//

struct Contact {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContacts() -> [Contact] {
        var contacts: [Contact] = []
        
        for _ in 1..<DataStore.names.count + 1 {
            contacts.append(Contact(
                name: getName(),
                surname: getSurname(),
                phoneNumber: getPhoneNumber(),
                email: getEmail()
            )
            )
        }
        
        return contacts
    }
}

// MARK: Private Methods
extension Contact {
    private static func getName() -> String {
        DataStore.names.remove(at: Int.random(in: 0..<DataStore.names.count))
    }
    
    private static func getSurname() -> String {
        DataStore.surnames.remove(at: Int.random(in: 0..<DataStore.surnames.count))
    }
    
    private static func getPhoneNumber() -> String{
        DataStore.phoneNumbers.remove(at: Int.random(in: 0..<DataStore.phoneNumbers.count))
    }
    
    private static func getEmail() -> String {
        DataStore.emails.remove(at: Int.random(in: 0..<DataStore.emails.count))
    }
}
