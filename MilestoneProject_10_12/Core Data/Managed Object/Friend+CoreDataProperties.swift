//
//  Friend+CoreDataProperties.swift
//  MilestoneProject_10_12
//
//  Created by Giovanni Gaffé on 2021/11/19.
//
//

import Foundation
import CoreData


extension Friend {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Friend> {
        return NSFetchRequest<Friend>(entityName: "Friend")
    }

    @NSManaged public var id: String?
    @NSManaged public var name: String?

}

extension Friend : Identifiable {

}
