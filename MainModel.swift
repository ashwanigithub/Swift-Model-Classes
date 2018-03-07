//
//  MainModel.swift
//  Ashwani
//
//  Created by Ashwani Sharma on 23/01/18.
//  Copyright © 2018 Chirie. All rights reserved.
//

import Foundation

class MainModel: NSObject, NSCoding {
    
    var success : Bool!
    var message : String!
    var data : UserMain!
    var msgData : [MsgInboxList]!
    var msgDataInboxByID : [MsgInboxByIDList]!
    var notifyList : [NotificationList]!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: NSDictionary){
        success = dictionary["success"] as? Bool
        message = dictionary["message"] as? String
        
        if let dataData = dictionary["data"] as? NSDictionary{
            data = UserMain(fromDictionary: dataData)
        }
        
        msgData = [MsgInboxList]()
        if let dataArray = dictionary["data"] as? [NSDictionary]{
            for dic in dataArray{
                let value = MsgInboxList(fromDictionary: dic)
                msgData.append(value)
            }
        }
        msgDataInboxByID = [MsgInboxByIDList]()
        if let dataArray = dictionary["data"] as? [NSDictionary]{
            for dic in dataArray{
                let value = MsgInboxByIDList(fromDictionary: dic)
                msgDataInboxByID.append(value)
            }
        }
        
        notifyList = [NotificationList]()
        if let dataArray = dictionary["data"] as? [NSDictionary]{
            for dic in dataArray{
                let value = NotificationList(fromDictionary: dic)
                notifyList.append(value)
            }
        }

        
    }
    
    /**
     * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> NSDictionary
    {
        let dictionary = NSMutableDictionary()
        if success != nil{
            dictionary["success"] = success
        }
        if message != nil{
            dictionary["message"] = message
        }
        
        if data != nil{
            dictionary["data"] = data.toDictionary()
        }
        if msgData != nil{
            var dictionaryElements = [NSDictionary]()
            for dataElement in msgData {
                dictionaryElements.append(dataElement.toDictionary())
            }
            dictionary["data"] = dictionaryElements
        }
        if msgDataInboxByID != nil{
            var dictionaryElements = [NSDictionary]()
            for dataElement in msgDataInboxByID {
                dictionaryElements.append(dataElement.toDictionary())
            }
            dictionary["data"] = dictionaryElements
        }

        return dictionary
    }
    
    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        success = aDecoder.decodeObject(forKey: "success") as? Bool
        message = aDecoder.decodeObject(forKey: "message") as? String
        data = aDecoder.decodeObject(forKey: "data") as? UserMain
        msgData = aDecoder.decodeObject(forKey: "data") as? [MsgInboxList]
        msgDataInboxByID = aDecoder.decodeObject(forKey: "data") as? [MsgInboxByIDList]

    }
    
    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if success != nil{
            aCoder.encode(success, forKey: "success")
        }
        if message != nil{
            aCoder.encode(message, forKey: "message")
        }
        if data != nil{
            aCoder.encode(data, forKey: "data")
        }
        if msgData != nil{
            aCoder.encode(msgData, forKey: "data")
        }
        if msgDataInboxByID != nil{
            aCoder.encode(msgDataInboxByID, forKey: "data")
        }

    }
    
}

