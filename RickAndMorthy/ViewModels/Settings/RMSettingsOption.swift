//
//  RMSettingsOption.swift
//  RickAndMorthy
//
//  Created by Waldek on 14/03/2023.
//

import UIKit
enum RMSettingsOption: CaseIterable {
    case rateApp
    case contactUs
    case terms
    case privacy
    case apiReference
    case viewSeries
    case viewCode
    
    var targetUrl: URL? {
        switch self {
        case .rateApp:
            return nil
        case .contactUs:
            return URL(string: "https://flexisoft.pl")
        case .terms:
            return URL(string: "https://flexisoft.pl")
        case .privacy:
            return URL(string: "https://flexisoft.pl")
        case .apiReference:
            return URL(string: "https://rickandmortyapi.com/documentation/#get-all-characters")
        case .viewSeries:
            return URL(string: "https://flexisoft.pl")
        case .viewCode:
            return URL(string: "https://flexisoft.pl")
        }
    }
    
    var displayTitle: String {
        switch self {
        case .rateApp:
            return "Rate App"
        case .contactUs:
            return "Contact Us"
        case .terms:
            return "Terms of Service"
        case .privacy:
            return "Privacy Policy"
        case .apiReference:
            return "API Reference"
        case .viewSeries:
            return "View Video Series"
        case .viewCode:
            return "View App Code"
        }
    }
    
    var iconContainerColor: UIColor {
        switch self {
        case .rateApp:
            return .systemBlue
        case .contactUs:
            return .systemGray
        case .terms:
            return .systemGreen
        case .privacy:
            return .systemPink
        case .apiReference:
            return .systemRed
        case .viewSeries:
            return .systemCyan
        case .viewCode:
            return .systemMint
        }
    }
    
    var iconImage: UIImage? {
        switch self {
        case .rateApp:
            return UIImage(systemName: "star.fill")
        case .contactUs:
            return UIImage(systemName: "paperplane")
        case .terms:
            return UIImage(systemName: "doc")
        case .privacy:
            return UIImage(systemName: "lock")
        case .apiReference:
            return UIImage(systemName: "list.clipboard")
        case .viewSeries:
            return UIImage(systemName: "tv.fill")
        case .viewCode:
            return UIImage(systemName: "hammer.fill")
        }
    }
}
