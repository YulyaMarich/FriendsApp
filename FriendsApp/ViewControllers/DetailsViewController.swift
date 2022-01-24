//
//  DetailsViewController.swift
//  FriendsApp
//
//  Created by Julia on 22.01.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet var episodeDetailsLabel: UILabel!
    @IBOutlet var episodeTitleLabel: UILabel!
    
    var episode: Episode!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialSetUp()
        
    }
    
    func initialSetUp() {
        episodeDetailsLabel.text = "Episode number: \(episode.episode_number ?? 0) \nSeason: \(episode.season ?? 0) \nEpisode in season: \(episode.episode_in_season ?? 0) \nDirected by: \(episode.directed_by ?? "No information") \nWritten by: \(episode.written_by ?? "No information") \nAir date: \(episode.air_date ?? "No information") \nUS viewers in millions: \(episode.us_viewers_in_millions ?? 0)"
        episodeTitleLabel.text = "\(episode.title ?? "No information")"
    }
}
