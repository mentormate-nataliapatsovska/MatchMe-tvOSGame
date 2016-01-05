//
//  ServiceProvider.swift
//  LevelsPreview
//
//  Created on 10/25/15.
//  Copyright © 2015. All rights reserved.
//

import Foundation
import TVServices
import UIKit

class ServiceProvider: NSObject, TVTopShelfProvider {

    // MARK: - TVTopShelfProvider protocol
    var topShelfStyle: TVTopShelfContentStyle {
        // Return desired Top Shelf style.
        return .Sectioned
    }
    
    var topShelfItems: [TVContentItem] {
        return sectionedTopShelfItems
    }
    
    private var sectionedTopShelfItems : [TVContentItem] {
        // Create an array of TVContentItems.
        let item1ID = TVContentIdentifier(identifier: "level_1", container: nil)!
        let level1Item = TVContentItem(contentIdentifier: item1ID)!
        level1Item.imageShape = .HDTV
        guard let imageURL1 =  NSBundle.mainBundle().URLForResource("Level1", withExtension: "lsr") else {
            fatalError("Error in creating content identifier for section item")
        }
        level1Item.imageURL = imageURL1
        
        let item2ID = TVContentIdentifier(identifier: "level_2", container: nil)!
        let level2Item = TVContentItem(contentIdentifier: item2ID)!
        level2Item.imageShape = .HDTV
        guard let imageURL2 =  NSBundle.mainBundle().URLForResource("Level2", withExtension: "lsr") else {
            fatalError("Error in creating content identifier for section item")
        }
        level2Item.imageURL = imageURL2
        
        let item3ID = TVContentIdentifier(identifier: "level_3", container: nil)!
        let level3Item = TVContentItem(contentIdentifier: item3ID)!
        level3Item.imageShape = .HDTV
        guard let imageURL3 =  NSBundle.mainBundle().URLForResource("Level3", withExtension: "lsr") else {
            fatalError("Error in creating content identifier for section item")
        }
        level3Item.imageURL = imageURL3
        
        // Create an array of TVContentItems.
        guard let section1ID = TVContentIdentifier(identifier: "section_1", container: nil) else {
            fatalError("Error in creating content identifier for section item")
        }
        let section1Item = TVContentItem(contentIdentifier: section1ID)!
        section1Item.topShelfItems = [level1Item, level2Item, level3Item]
        
        let sectionedContentItems : [TVContentItem] = [section1Item]
        return sectionedContentItems
    }
}

