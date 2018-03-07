//
//  UserMain.swift
//  Ashwani
//
//  Created by Ashwani Sharma  on 05/12/17.
//  Copyright © 2017 Chirie. All rights reserved.
//

import Foundation

class UserMain: NSObject, NSCoding {

    var User_Name : String!
    var First_Name : String!
    var Last_Name : String!
    var User_Email : String!
    var User_Phone : String!
    var User_Zipcode : String!
    var User_Description : String!
    var User_Address : String!
    var User_ID : String!
    var User_createdAt : String!
    var User_updatedAt : String!
    var User_profileimage : String!

    var isFacebook : Bool!

    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: NSDictionary){
        User_Name = dictionary["username"] as? String
        First_Name = dictionary["firstname"] as? String
        Last_Name = dictionary["lastname"] as? String
        User_Email = dictionary["email"] as? String
        User_Phone = dictionary["phone"] as? String
        User_Zipcode = dictionary["zipcode"] as? String
        User_Description = dictionary["description"] as? String
        User_Address = dictionary["address"] as? String
        User_ID = dictionary["id"] as? String
        User_createdAt = dictionary["createdAt"] as? String
        User_updatedAt = dictionary["updatedAt"] as? String
        User_profileimage = dictionary["profileimage"] as? String
        isFacebook = dictionary["isFacebook"] as? Bool

    }
    
    /**
     * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> NSDictionary
    {
        let dictionary = NSMutableDictionary()
        if User_Name != nil{
            dictionary["username"] = User_Name
        }
        if First_Name != nil{
            dictionary["firstname"] = First_Name
        }
        if Last_Name != nil{
            dictionary["lastname"] = Last_Name
        }
        if User_Email != nil{
            dictionary["email"] = User_Email
        }
        if User_Phone != nil{
            dictionary["phone"] = User_Phone
        }
        if User_Zipcode != nil{
            dictionary["zipcode"] = User_Zipcode
        }
        if User_Description != nil{
            dictionary["description"] = User_Description
        }
        if User_Address != nil{
            dictionary["address"] = User_Address
        }
        if User_ID != nil{
            dictionary["id"] = User_ID
        }
        if User_createdAt != nil{
            dictionary["createdAt"] = User_createdAt
        }
        if User_updatedAt != nil{
            dictionary["updatedAt"] = User_updatedAt
        }
        if User_profileimage != nil{
            dictionary["profileimage"] = User_profileimage
        }
        if isFacebook != nil{
            dictionary["isFacebook"] = isFacebook
        }

        return dictionary
    }
    
    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        User_Name = aDecoder.decodeObject(forKey: "username") as? String
        First_Name = aDecoder.decodeObject(forKey: "firstname") as? String
        Last_Name = aDecoder.decodeObject(forKey: "lastname") as? String
        User_Email = aDecoder.decodeObject(forKey: "email") as? String
        User_Phone = aDecoder.decodeObject(forKey: "phone") as? String
        User_Zipcode = aDecoder.decodeObject(forKey: "zipcode") as? String
        User_Description = aDecoder.decodeObject(forKey: "description") as? String
        User_Address = aDecoder.decodeObject(forKey: "address") as? String
        User_ID = aDecoder.decodeObject(forKey: "id") as? String
        User_createdAt = aDecoder.decodeObject(forKey: "createdAt") as? String
        User_updatedAt = aDecoder.decodeObject(forKey: "updatedAt") as? String
        User_profileimage = aDecoder.decodeObject(forKey: "profileimage") as? String
        isFacebook = aDecoder.decodeObject(forKey: "isFacebook") as? Bool
    }
    
    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if User_Name != nil{
            aCoder.encode(User_Name, forKey: "username")
        }
        if First_Name != nil{
            aCoder.encode(First_Name, forKey: "firstname")
        }
        if Last_Name != nil{
            aCoder.encode(Last_Name, forKey: "lastname")
        }
        if User_Email != nil{
            aCoder.encode(User_Email, forKey: "email")
        }
        if User_Phone != nil{
            aCoder.encode(User_Phone, forKey: "phone")
        }
        if User_Zipcode != nil{
            aCoder.encode(User_Zipcode, forKey: "zipcode")
        }
        if User_Description != nil{
            aCoder.encode(User_Description, forKey: "description")
        }
        if User_Address != nil{
            aCoder.encode(User_Address, forKey: "address")
        }
       
        if User_ID != nil{
            aCoder.encode(User_ID, forKey: "id")
        }
        if User_createdAt != nil{
            aCoder.encode(User_createdAt, forKey: "createdAt")
        }
        if User_updatedAt != nil{
            aCoder.encode(User_updatedAt, forKey: "updatedAt")
        }
        
        if User_profileimage != nil{
            aCoder.encode(User_profileimage, forKey: "profileimage")
        }

        if isFacebook != nil{
            aCoder.encode(isFacebook, forKey: "isFacebook")
        }

    }
    
}
