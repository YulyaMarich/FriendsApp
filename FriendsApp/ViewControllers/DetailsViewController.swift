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
        episodeDetailsLabel.text = "Episode number: \(episode.episodeNumber ?? 0) \nSeason: \(episode.season ?? 0) \nEpisode in season: \(episode.episodeInSeason ?? 0) \nDirected by: \(episode.directedBy ?? "No information") \nWritten by: \(episode.writtenBy ?? "No information") \nAir date: \(episode.airDate ?? "No information") \nUS viewers in millions: \(episode.usViewersInMillions ?? 0)"
        episodeTitleLabel.text = "\(episode.title ?? "No information")"
    }
}
