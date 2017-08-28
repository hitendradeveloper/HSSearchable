//
//  HSSearchTableViewController.swift
//  HSSearchable
//
//  Created by Hitendra iDev on 28/08/17.
//  Copyright © 2017 Hitendra iDev. All rights reserved.
//

import UIKit

class HSSearchTableViewController: UITableViewController {
    
    //MARK: iVars
    var usersData = SearchableWrapper()
    var users: [UserDM] {
        return self.usersData.dataArray as! [UserDM]
    }
    
    //MARK: IBOutlet
    @IBOutlet weak var searchbar: UISearchBar!
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.searchbar.delegate = self.usersData
        self.usersData.searchingCallBack = { isSearching, searchText in
            print("searching Text:= \(searchText)")
            self.tableView.reloadData()
        }
        self.loadDummyData()
    }
    
    func loadDummyData(){
        
        let user1 = UserDM(name: "Hitendra Solanki", city: "Ahmedabad")
        let user2 = UserDM(name: "Justina Flores", city: "Arizona")
        let user3 = UserDM(name: "Lisa Minick", city: "Casper")
        let user4 = UserDM(name: "Moises Patrick", city: "Reno")
        let user5 = UserDM(name: "Martha Fisher", city: "Tacoma")
        let user6 = UserDM(name: "Martha McDaniel", city: "Irvine")
        
        let array : Array<UserDM> = [
            user1,
            user2,
            user3,
            user4,
            user5,
            user6
        ]
        
        //In most of the cases, this data will come from the server side
        self.usersData.serverArray = array;
        self.tableView.reloadData()
    }
}

// MARK: - Table view data source | Delegate
extension HSSearchTableViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.users.count;
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath) as! UserTableViewCell
        cell.user = self.users[indexPath.row]
        
        return cell
    }
}
