//
//  PersonsListViewController.swift
//  MirnaiaNV_HW2.6
//
//  Created by Наталья Мирная on 30/11/2019.
//  Copyright © 2019 Наталья Мирная. All rights reserved.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    var personsList: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillPersonsList()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)

        cell.textLabel?.text = personsList[indexPath.row].initials
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = personsList[indexPath.row]
        performSegue(withIdentifier: "detailPerson", sender: person)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailPerson" {
            let detailVC = segue.destination as! DetailViewController
            detailVC.person = sender as? Person
        }
    }
    
    private func fillPersonsList() {
        for _ in 0..<PersonBuilder.nameList.count {
            personsList.append(PersonBuilder.getPerson())
        }
    }
}
