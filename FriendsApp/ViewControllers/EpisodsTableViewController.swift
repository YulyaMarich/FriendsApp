//
//  EpisodsTableViewController.swift
//  FriendsApp
//
//  Created by Julia on 22.01.2022.
//

import UIKit

class EpisodsTableViewController: UITableViewController {

    var episods: [Episode]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return episods.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "episodeCell", for: indexPath)
        cell.textLabel?.text = episods[indexPath.row].title
        cell.textLabel?.numberOfLines = 0
        cell.backgroundColor = .black
        cell.textLabel?.textColor = .white

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        60
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let detailsVC = segue.destination as! DetailsViewController
        detailsVC.episode = episods[indexPath.row]
    }
   
}
