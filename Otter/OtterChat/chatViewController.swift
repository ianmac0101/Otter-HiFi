//
//  chatViewController.swift
//  Otter
//
//  Created by Sonia Velasco on 12/2/17.
//  Copyright © 2017 Otter. All rights reserved.
//

import UIKit
import JSQMessagesViewController

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
    let image = UIImage(named: "otter_img.png")



    var currentUser: User {
        return user1
    }
    var messages = [JSQMessage]()
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
        
        //Changed Defaults/Saved Data
        
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
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int)-> Int{
        return messages.count
    }
    override func collectionView(_ collectionView: JSQMessagesCollectionView, messageDataForItemAt indexPath: IndexPath!)-> JSQMessageData!{
        return messages[indexPath.row]
        
    }
}

extension chatViewController{
    override func viewDidLoad(){
        super.viewDidLoad()
        
        self.senderId = currentUser.id
        self.senderDisplayName = currentUser.name
        self.messages = getMessages()
    }
}

extension chatViewController{
    func getMessages() -> [JSQMessage]{
        var messages = [JSQMessage]()
        
       // let message1 = JSQMessage(senderId:"1",  displayName: "S", text: "Hey how are you")
        let message2 = JSQMessage(senderId: "2", displayName: "Otter", text: "Hey I'm Otter! How are you?")
      //  messages.append(message1!)
        messages.append(message2!)
        return messages
    }
}
