//
//  ContactListViewController.swift
//  HomeWork 7
//
//  Created by Дмитрий Бессонов on 07.01.2022.
//

import UIKit

class ContactListViewController: UITableViewController {

    var persons: [Person] = []
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }



    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    // MARK: - Navigation


        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let indexPath = tableView.indexPathForSelectedRow {
                guard let detailVC = segue.destination as? ContactDetailsViewController else { return }
                detailVC.person = persons[indexPath.row]
            }
        }

}
