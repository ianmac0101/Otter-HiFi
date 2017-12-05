//
//  chatViewController.swift
//  Otter
//
//  Created by Sonia Velasco on 12/2/17.
//  Copyright © 2017 Otter. All rights reserved.
//

import UIKit
import JSQMessagesViewController


var messages = [JSQMessage]()

struct User{
    let id: String
    let name:String
}

class chatViewController: JSQMessagesViewController{
    

    //TODO: test how keyboard works
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(false)
//        self.inputToolbar!.contentView!.textView!.becomeFirstResponder()
//    }
    
    let user1 = User(id:"1", name: "Me")
    let user2 = User(id: "2", name: "Otter")
    //let image = UIImage(named: "otter_img.png")
    //var message  = [JSQMessage]()
    
    
    let image = UIImage(named: "otter_img.png")



    var currentUser: User {
        return user1
    }
    
    
    
    //NSUserDefaults.standardUserDefaults().setValue(messages,forKey: "MExists")
}

extension chatViewController{
    
    
    override func didPressSend(_ button: UIButton!, withMessageText text: String!, senderId: String!, senderDisplayName: String!, date: Date!) {
        //need to add to array of message
        let message = JSQMessage(senderId: senderId, displayName: senderDisplayName, text: text)
        messages.append(message!)
        finishSendingMessage()
        if text.lowercased().range(of:"bad") != nil {
            // messages.append("O sent")
            let message1 = JSQMessage(senderId:"2",  displayName: "Otter", text: "Oh No!")
            messages.append(message1!)
            finishSendingMessage()
        }
        if text.lowercased().range(of:"good") != nil {
            // messages.append("O sent")
            let message1 = JSQMessage(senderId:"2",  displayName: "Otter", text: "Sounds great!")
            messages.append(message1!)
            finishSendingMessage()
        }

    }

    
    override func collectionView(_ collectionView: JSQMessagesCollectionView!, attributedTextForMessageBubbleTopLabelAt indexPath: IndexPath!) -> NSAttributedString! {
        let message = messages[indexPath.row]
        let messageUsername = message.senderDisplayName
        return NSAttributedString(string: messageUsername!)
    }
    
    override func collectionView(_ collectionView: JSQMessagesCollectionView!, layout collectionViewLayout: JSQMessagesCollectionViewFlowLayout!, heightForMessageBubbleTopLabelAt indexPath: IndexPath!) -> CGFloat {
        return 15
    }
    
    func getAvatar(_ id: String)->JSQMessagesAvatarImage{
        if (id == "2"){
            return JSQMessagesAvatarImageFactory.avatarImage(withPlaceholder: UIImage(named: "otter_img.png")!, diameter:15)
        }
        
        else{
            return JSQMessagesAvatarImageFactory.avatarImage(withPlaceholder: UIImage(named: "otter_img.png")!, diameter:1)
        }
        
    }
    
    override func collectionView(_ collectionView: JSQMessagesCollectionView, attributedTextForCellTopLabelAt indexPath: IndexPath) -> NSAttributedString? {
        /**
         *  This logic should be consistent with what you return from `heightForCellTopLabelAtIndexPath:`
         *  The other label text delegate methods should follow a similar pattern.
         *
         *  Show a timestamp for every 5th message
         */
        if (indexPath.row % 5 == 0) {
            let message = messages[indexPath.row]
            
            return JSQMessagesTimestampFormatter.shared().attributedTimestamp(for: message.date)
        }
        
        return nil
    }
    override func collectionView(_ collectionView: JSQMessagesCollectionView, layout collectionViewLayout: JSQMessagesCollectionViewFlowLayout, heightForCellTopLabelAt indexPath: IndexPath) -> CGFloat {
        
        /**
         *  This logic should be consistent with what you return from `attributedTextForCellTopLabelAtIndexPath:`
         *  The other label height delegate methods should follow similarly
         *
         *  Show a timestamp for every 5th message
         */
        if indexPath.row % 5 == 0 {
            return kJSQMessagesCollectionViewCellLabelHeightDefault
        }
        
        return 0.0
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return messages.count
    }
        
    
    override func collectionView(_ collectionView: JSQMessagesCollectionView!, avatarImageDataForItemAt indexPath: IndexPath!)->JSQMessageAvatarImageDataSource! {
        let message = messages[indexPath.row]
        if (message.senderId=="1"){
           return nil
        }else{
            return getAvatar(message.senderId)
        }
    //return nil
        //image for the USER
    }
    override func collectionView(_ collectionView: JSQMessagesCollectionView!, messageBubbleImageDataForItemAt indexPath: IndexPath!)-> JSQMessageBubbleImageDataSource!{
        let bubbleFactory = JSQMessagesBubbleImageFactory()
        //get userid by first grabbing message
        let message = messages[indexPath.row]
        if currentUser.id == message.senderId{
            //if belongs to current user
            return bubbleFactory?.outgoingMessagesBubbleImage(with: .green)
        }
        else{
            return bubbleFactory?.incomingMessagesBubbleImage(with: .blue)
        }
        //return bubbleFactory?.incomingMessagesBubbleImage(with: .green)
    }

    override func collectionView(_ collectionView: JSQMessagesCollectionView, messageDataForItemAt indexPath: IndexPath!)-> JSQMessageData!{
        return messages[indexPath.row]
        
    }
}

extension chatViewController{
    override func viewDidLoad(){
        super.viewDidLoad()
       // if let savedmessage = UserDefaults.standard.value(forKey: "saved") as? [JSQMessage] {
        //    messages = savedmessage
        //} else{
        //self.messages = getMessages()
        messages = getMessages()
        //}
        self.senderId = currentUser.id
        self.senderDisplayName = currentUser.name
        //self.messages = getMessages()
        
    }
}

extension chatViewController{
    func getMessages() -> [JSQMessage]{

        //var messages = [JSQMessage]()
        //Changed Defaults/Saved Data
        //let defaults = UserDefaults.standard
        //defaults.set(messages, forKey: "saved")
       // let message1 = JSQMessage(senderId:"1",  displayName: "S", text: "Hey how are you")
        //let message2 = JSQMessage(senderId: "2", displayName: "Otter", text: "Hey I'm Otter! How are you?")
        var message2 = JSQMessage(senderId: "2", displayName: "Otter", text: "Hey I'm Otter! How are you?")
        var copyMessage = messages.last?.copy()
        if (copyMessage == nil) {
            //keep like a count using messages.count
            //can say every 5th message check up or maybe using date
            //only append first message for sure when
            //copyMessage ==nil
            //then maybe by message counts or days
            //have hello again consistent? or every nth time appear
        } else{
             message2 = JSQMessage(senderId: "2", displayName: "Otter", text: "Hello Again")
        }
  
        
      //  messages.append(message1!)
        messages.append(message2!)
        return messages
    }
}
