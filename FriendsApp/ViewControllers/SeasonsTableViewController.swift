//
//  SeasonsTableViewController.swift
//  FriendsApp
//
//  Created by Julia on 22.01.2022.
//

import UIKit

class SeasonsTableViewController: UITableViewController {
    
    var json = "https://api.dedolist.com/api/v1/entertainment/friends-tv-episodes/"
    var serial: [Episode] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
        
        view.backgroundColor = .black
    
    }
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "seasonCell", for: indexPath)
        cell.textLabel?.text = "Season \(indexPath.row + 1)"
        cell.backgroundColor = .black
        cell.textLabel?.textColor = .white


        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        45
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let episodsVC = segue.destination as! EpisodsTableViewController
        let episods = serial.filter({ $0.season == (indexPath.row + 1) })
        episodsVC.title = "Season \(indexPath.row + 1)"
        episodsVC.episods = episods
        
    }
    
    private func fetchData() {
        guard let url = URL(string: json) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else { return }
            
            let decoder = JSONDecoder()
            
            do {
                self.serial = try decoder.decode([Episode].self, from: data)
            } catch let error {
                print(String(describing: error))
            }
        } .resume()
        
    }
    
}
