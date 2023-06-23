//
//  ViewController.swift
//  RickAndMortySwift
//
//  Created by Piero Jhoann Acevedo Pichen on 8/06/23.
//

import UIKit

/// Controller to house tab and root tab controller
final class RMTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
    }
    
    func setupTabs() {
        let characterVC = RMCharacterViewController()
        let locationVC = RMLocationViewController()
        let episodeVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()
        
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        locationVC.navigationItem.largeTitleDisplayMode = .automatic
        episodeVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let navCharacter = UINavigationController(rootViewController: characterVC)
        let navLocation = UINavigationController(rootViewController: locationVC)
        let navEpisode = UINavigationController(rootViewController: episodeVC)
        let navSettings = UINavigationController(rootViewController: settingsVC)
        
        navCharacter.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person"), tag: 1)
        navLocation.tabBarItem = UITabBarItem(title: "Location", image: UIImage(systemName: "globe"), tag: 2)
        navEpisode.tabBarItem = UITabBarItem(title: "Episode", image: UIImage(systemName: "tv"), tag: 3)
        navSettings.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        for nav in [navCharacter, navLocation, navEpisode, navSettings] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers(
            [navCharacter, navLocation, navEpisode, navSettings],
            animated: true
        )
        
    }
    
    
    
}

