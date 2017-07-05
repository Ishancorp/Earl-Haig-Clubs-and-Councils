//
//  EarlHaigClub.swift
//  Earl-Haig Clubs and Councils
//
//  Created by Harish Sharma on 2014-12-21.
//  Copyright (c) 2014 IshanCorp. All rights reserved.
//

import UIKit

class EarlHaigClub : NSObject {
    var clubCouncilName : String
    var president : String
    var presidentEmailAddress : String
    var staffSponsor : String
    var staffSponsorEmailAddress : String
    var nullDescription : String
    var whereDoesTheClubCouncilUsuallyMeet : String
    var whenDoesTheClubUsuallyMeet : String
    var clubDescription : String
    var howToJoin : String
    var imageName : String
    
    override init(){
        self.clubCouncilName = ""
        self.president = ""
        self.presidentEmailAddress = ""
        self.staffSponsor = ""
        self.staffSponsorEmailAddress = ""
        self.nullDescription = ""
        self.whereDoesTheClubCouncilUsuallyMeet = ""
        self.whenDoesTheClubUsuallyMeet = ""
        self.clubDescription = ""
        self.howToJoin = ""
        self.imageName = ""
    }
    
    
    init( _ clubCouncilName : String,
        _ president : String,
        _ presidentEmailAddress : String,
        _ staffSponsor : String,
        _ staffSponsorEmailAddress : String,
        _ nullDescription : String,
        _ whereDoesTheClubCouncilUsuallyMeet : String,
        _ whenDoesTheClubUsuallyMeet : String,
        _ clubDescription : String,
        _ howToJoin : String,
        _ imageName : String){
    
            self.clubCouncilName = clubCouncilName
            self.president = president
            self.presidentEmailAddress = presidentEmailAddress
            self.staffSponsor = staffSponsor
            self.staffSponsorEmailAddress = staffSponsorEmailAddress
            self.nullDescription = nullDescription
            self.whereDoesTheClubCouncilUsuallyMeet = whereDoesTheClubCouncilUsuallyMeet
            self.whenDoesTheClubUsuallyMeet = whenDoesTheClubUsuallyMeet
            self.clubDescription = clubDescription
            self.howToJoin = howToJoin
            self.imageName = imageName
    }
}
