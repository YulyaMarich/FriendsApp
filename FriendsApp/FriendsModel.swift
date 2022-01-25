//
//  Friends.swift
//  FriendsApp
//
//  Created by Julia on 22.01.2022.
//

struct Episode: Decodable {
    let episodeNumber: Int?
    let season: Int?
    let episodeInSeason: Int?
    let title: String?
    let directedBy: String?
    let writtenBy: String?
    let airDate: String?
    let usViewersInMillions: Double?
    
    init(dictEpisode: [String: Any]) {
        episodeNumber = dictEpisode["episode_number"] as? Int
        season = dictEpisode["season"] as? Int
        episodeInSeason = dictEpisode["episode_in_season"] as? Int
        title = dictEpisode["title"] as? String
        directedBy = dictEpisode["directed_by"] as? String
        writtenBy = dictEpisode["written_by"] as? String
        airDate = dictEpisode["air_date"] as? String
        usViewersInMillions = dictEpisode["episode_number"] as? Double
    }
    
    static func getEpisods(from value: Any) -> [Episode]? {
        guard let value = value as? [[String:Any]] else { return nil }
        return value.compactMap{ Episode(dictEpisode: $0) }
}
}

