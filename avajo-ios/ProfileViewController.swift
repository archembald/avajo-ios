//
//  ProfileViewController.swift
//  avajo-ios
//
//  Created by Alejandro Alvarez Martinez on 05/10/2015.
//  Copyright (c) 2015 Archembald. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet var imgProfilePicture: UIImageView!
    @IBOutlet var labelUsername: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.imgProfilePicture.layer.masksToBounds = true
        self.imgProfilePicture.layer.cornerRadius = self.imgProfilePicture.frame.height/2
        
        // Get info from FB
        let graphRequest : FBSDKGraphRequest = FBSDKGraphRequest(graphPath: "me", parameters: nil)
        graphRequest.startWithCompletionHandler({ (connection, result, error) -> Void in
            
            if ((error) != nil){
                // Process error
                println("Error: \(error)")
            }
            else
            {
                self.labelUsername.text = result.valueForKey("name") as? String
                
                // Set pic
                let fbid = result.valueForKey("id") as? String
                let url = NSURL(string: "https://graph.facebook.com/"+fbid!+"/picture?type=large")
                let data = NSData(contentsOfURL: url!)
                self.imgProfilePicture.image = UIImage(data: data!);
            }
        })

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

