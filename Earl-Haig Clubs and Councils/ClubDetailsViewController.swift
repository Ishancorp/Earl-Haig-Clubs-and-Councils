//
//  ClubDetailsViewController.swift
//  Earl-Haig Clubs and Councils
//
//  Created by Harish Sharma on 2014-12-21.
//  Copyright (c) 2014 IshanCorp. All rights reserved.
//

import UIKit

class ClubDetailsViewController: UIViewController {
    @IBOutlet weak var details: UITextView!
    
    let labelNames : [String] = [
        "Club/Council Name:\n",
        "\n\nPresident:\n",
        "\n\n📧President's Email:\n",
        "\n\nStaff Sponsor:\n",
        "\n\n📧Staff sponsor email address:\n",
        "\n\nNullDescription:\n",
        "\n\n📍Where does the usually meet:\n",
        "\n\n📆When does the club usually meet:\n",
        "\n\nClub description:\n",
        "\n\nHow to join:\n" ]
    
    var club = EarlHaigClub()
    
    func showClubDetails() {
        var locationLengthPairs = [[Int]]()
        var row = [Int]()
        
        var startLabel = 0
        var endLabel  = countElements(labelNames[0])
        var myString = labelNames[0] + club.clubCouncilName
        locationLengthPairs.append([startLabel,endLabel])
        
        startLabel = countElements(myString)
        endLabel  = countElements(labelNames[1])
        myString = myString + labelNames[1] + club.president
        locationLengthPairs.append([startLabel,endLabel])
        
        startLabel = countElements(myString)
        endLabel  = countElements(labelNames[2])
        myString = myString + labelNames[2] + club.presidentEmailAddress
        locationLengthPairs.append([startLabel,endLabel])
        
        startLabel = countElements(myString)
        endLabel  = countElements(labelNames[3])
        myString = myString + labelNames[3] + club.staffSponsor
        locationLengthPairs.append([startLabel,endLabel])
        
        startLabel = countElements(myString)
        endLabel  = countElements(labelNames[4])
        myString = myString + labelNames[4] + club.staffSponsorEmailAddress
        locationLengthPairs.append([startLabel,endLabel])
        
        startLabel = countElements(myString)
        endLabel  = countElements(labelNames[6])
        myString = myString + labelNames[6] + club.whenDoesTheClubUsuallyMeet
        locationLengthPairs.append([startLabel,endLabel])
        
        startLabel = countElements(myString)
        endLabel  = countElements(labelNames[7])
        myString = myString + labelNames[7] + club.whenDoesTheClubUsuallyMeet
        locationLengthPairs.append([startLabel,endLabel])
        
        startLabel = countElements(myString)
        endLabel  = countElements(labelNames[8])
        myString = myString + labelNames[8] + club.clubDescription
        locationLengthPairs.append([startLabel,endLabel])
        
        startLabel = countElements(myString)
        endLabel  = countElements(labelNames[9])
        myString = myString + labelNames[9] + club.howToJoin
        locationLengthPairs.append([startLabel,endLabel])
        
        var myMutableString = NSMutableAttributedString()

        myMutableString = NSMutableAttributedString(string: myString, attributes: [NSFontAttributeName:UIFont(name: "HelveticaNeue-Light", size: 16.0)!])
        
        for blueFont in locationLengthPairs {
            let startLabel = blueFont[0]
            let endLength = blueFont[1]
            myMutableString.addAttribute(NSFontAttributeName, value: UIFont(name: "Arial", size: 14.0)!, range: NSRange(location:startLabel,length:endLength))
            //myMutableString.addAttribute(NSFontAttributeName, value: UIFont(name: "AmericanTypewriter-Bold", size: 14.0)!, range: NSRange(location:startLabel,length:endLength))
            myMutableString.addAttribute(NSForegroundColorAttributeName, value: UIColor.grayColor(), range: NSRange(location:startLabel,length:endLength))
        }
        
        /*
        startLabel = countElements(myString)
        endLabel  = countElements(labelNames[1])
        myString += labelNames[1] + club.president
        myMutableString.addAttribute(NSFontAttributeName, value: UIFont(name: "AmericanTypewriter-Bold", size: 16.0)!, range: NSRange(location:startLabel,length:endLabel))
        myMutableString.addAttribute(NSForegroundColorAttributeName, value: UIColor.blueColor(), range: NSRange(location:startLabel,length:endLabel))
        
        */
        
        //Add more attributes here:
        //myMutableString.addAttribute(NSFontAttributeName, value: UIFont(name: "Chalkduster", size: 24.0)!, range: NSRange(location: 7,length: 5))
        //myMutableString.addAttribute(NSFontAttributeName, value: UIFont(name: "Georgia", size: 36.0)!, range: NSRange(location: 0, length: 1))
        //myMutableString.addAttribute(NSStrokeColorAttributeName, value: UIColor.blueColor(), range:  NSRange(location: 0, length: 9))
        //myMutableString.addAttribute(NSStrokeWidthAttributeName, value: 2, range: NSRange(location: 0, length: 1))
        
        //myMutableString.addAttribute(NSBackgroundColorAttributeName, value: UIColor.greenColor(), range: NSRange(location: 0, length: myString.length))
        
        //details.backgroundColor = UIColor.grayColor()
        
        //Apply to the label
        
        details.attributedText = myMutableString
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        showClubDetails()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
