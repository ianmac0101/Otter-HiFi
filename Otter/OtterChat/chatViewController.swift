//
//  chatViewController.swift
//  Otter
//
//  Created by Sonia Velasco on 12/2/17.
//  Copyright © 2017 Otter. All rights reserved.
//

import UIKit
import JSQMessagesViewController
let pleasentFeelings = ["open",
                        "happy",
                        "alive",
                        "good",
                        "understanding",
                        "great",
                        "playful",
                        "calm",
                        "confident",
                        "gay",
                        "courageous",
                        "peaceful",
                        "reliable",
                        "joyous",
                        "energetic",
                        "at ease",
                        "easy",
                        "lucky",
                        "liberated",
                        "comfortable",
                        "amazed",
                        "fortunate",
                        "optimistic",
                        "pleased",
                        "free",
                        "delighted",
                        "provocative",
                        "encouraged",
                        "sympathetic",
                        "overjoyed",
                        "impulsive",
                        "clever",
                        "interested",
                        "gleeful",
                        "free",
                        "surprised",
                        "satisfied",
                        "thankful",
                        "frisky",
                        "content",
                        "receptive",
                        "important",
                        "animated",
                        "quiet",
                        "accepting",
                        "festive",
                        "spirited",
                        "certain",
                        "kind",
                        "ecstatic",
                        "thrilled",
                        "relaxed",
                        "satisfied",
                        "wonderful",
                        "serene",
                        "glad",
                        "free and easy",
                        "cheerful",
                        "bright",
                        "sunny",
                        "blessed",
                        "merry",
                        "reassured",
                        "elated",
                        "jubilant",
                        "love",
                        "interested",
                        "positive",
                        "strong",
                        "loving",
                        "concerned",
                        "eager",
                        "impulsive",
                        "considerate",
                        "affected",
                        "keen",
                        "free",
                        "affectionate",
                        "fascinated",
                        "earnest",
                        "sure",
                        "sensitive",
                        "intrigued",
                        "intent",
                        "certain",
                        "tender",
                        "absorbed",
                        "anxious",
                        "rebellious",
                        "devoted",
                        "inquisitive",
                        "inspired",
                        "unique",
                        "attracted",
                        "nosy",
                        "determined",
                        "dynamic",
                        "passionate",
                        "snoopy",
                        "excited",
                        "tenacious",
                        "admiration",
                        "engrossed",
                        "enthusiastic",
                        "hardy",
                        "warm",
                        "curious",
                        "bold",
                        "secure",
                        "touched",
                        "brave",
                        "sympathy",
                        "daring",
                        "close",
                        "challenged",
                        "loved",
                        "optimistic",
                        "comforted",
                        "re-enforced",
                        "drawn toward",
                        "confident",
                        "hopeful",
                        "nice",
    
]
let unpleasentFeelings = ["angry",
                          "rough",
                          "tough",
                         "depressed",
                         "confused",
                         "helpless",
                         "irritated",
                         "lousy",
                         "upset",
                         "incapable",
                         "enraged",
                         "disappointed",
                         "doubtful",
                         "alone",
                         "hostile",
                         "discouraged",
                         "uncertain",
                         "paralyzed",
                         "insulting",
                         "ashamed",
                         "indecisive",
                         "fatigued",
                         "sore",
                         "powerless",
                         "perplexed",
                         "useless",
                         "annoyed",
                         "diminished",
                         "embarrassed",
                         "inferior",
                         "upset",
                         "guilty",
                         "hesitant",
                         "vulnerable",
                         "hateful",
                         "dissatisfied",
                         "shy",
                         "empty",
                         "unpleasant",
                         "miserable",
                         "stupefied",
                         "forced",
                         "offensive",
                         "detestable",
                         "disillusioned",
                         "hesitant",
                         "bitter",
                         "repugnant",
                         "unbelieving",
                         "despair",
                         "aggressive",
                         "despicable",
                         "skeptical",
                         "frustrated",
                         "resentful",
                         "disgusting",
                         "distrustful",
                         "distressed",
                         "inflamed",
                         "abominable",
                         "misgiving",
                         "woeful",
                         "provoked",
                         "terrible",
                         "lost",
                         "pathetic",
                         "incensed",
                         "in despair",
                         "unsure",
                         "tragic",
                         "infuriated",
                         "sulky",
                         "uneasy",
                         "in a stew",
                         "cross",
                         "bad",
                         "pessimistic",
                         "dominated",
                         "worked up",
                         "a sense of loss",
                         "tense",
                         "boiling",
                         "fuming",
                         "indignant",
                         "indifferent",
                         "afraid",
                         "hurt",
                         "sad",
                         "insensitive",
                         "fearful",
                         "crushed",
                         "tearful",
                         "dull",
                         "terrified",
                         "tormented",
                         "sorrowful",
                         "nonchalant",
                         "suspicious",
                         "deprived",
                         "pained",
                         "neutral",
                         "anxious",
                         "pained",
                         "grief",
                         "reserved",
                         "alarmed",
                         "tortured",
                         "anguish",
                         "weary",
                         "panic",
                         "dejected",
                         "desolate",
                         "bored",
                         "nervous",
                         "rejected",
                         "desperate",
                         "preoccupied",
                         "scared",
                         "injured",
                         "pessimistic",
                         "cold",
                         "worried",
                         "offended",
                         "unhappy",
                         "disinterested",
                         "frightened",
                         "afflicted",
                         "lonely",
                         "lifeless",
                         "timid",
                         "aching",
                         "grieved",
                         "shaky",
                         "victimized",
                         "mournful",
                         "restless",
                         "heartbroken",
                         "dismayed",
                         "doubtful",
                         "agonized",
                         "threatened",
                         "appalled",
                         "cowardly",
                         "humiliated",
                         "quaking",
                         "wronged",
                         "menaced",
                         "alienated",
                         "wary"
]
let neutralFeeligs = ["ok", "o.k", ":/", "o.k.","meh"]

var messages = [JSQMessage]()
let goalsL = goalsList
struct User{
    let id: String
    let name:String
}

class chatViewController: JSQMessagesViewController{
    
    //TODO: test how keyboard works
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        //super.viewDidDisappear(true)

        //self.inputToolbar!.contentView!.textView!.becomeFirstResponder()
    }
    
    let user1 = User(id:"1", name: "Me")
    let user2 = User(id: "2", name: "Otter")
    //let image = UIImage(named: "otter_img.png")
    //var message  = [JSQMessage]()
    
    
    let image = UIImage(named: "otter-art.png")

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
        //Edit Anything that will be sent
        //within them use switches to:
        //use an array such that if array.contains(text) go into random
        //if text.lowercased().range(of:"bad") != nil {
        let randomV = goalsL.count
        let index = Int(arc4random_uniform(UInt32(randomV)))
        print (goalsL[index].activity)
        let randomSelection = Int(arc4random_uniform(UInt32(3)))
        let myStringArr = text.components(separatedBy: " ") //parsed user message
        print (myStringArr)
        var story = 4
        for word in myStringArr{
            print (word)
            if unpleasentFeelings.contains(word.lowercased()){
                print("found")
                story = 1
                break
            }
            else if pleasentFeelings.contains(word.lowercased()){
                print ("in 2")
                story = 2
                break
            }
            else if neutralFeeligs.contains(word.lowercased()) {
                story = 3
                break
            }
        }
        switch story{
        case 1:
            var message1 = JSQMessage(senderId:"2",  displayName: "Otter", text: "Oh No! I think heading over to \"Practice\" will help")
            
            switch randomSelection{
            case 0 :
                message1 = JSQMessage(senderId:"2",  displayName: "Otter", text: "Oh No! Tell me more.")
            case 1 :
                message1 = JSQMessage(senderId:"2",  displayName: "Otter", text: ":/ How about heading over to make a goal that will help you with this feeling?")
            case 2:
                message1 = JSQMessage(senderId:"2",  displayName: "Otter", text: "Really? What else happened?")
                
            default:
                message1 = JSQMessage(senderId:"2",  displayName: "Otter", text: "Keep going. Please.")
            }
            
            messages.append(message1!)
            finishSendingMessage()
            
        case 2:
            var message1 = JSQMessage(senderId:"2",  displayName: "Otter", text: "Sounds great!")
            switch randomSelection{
            case 0 :
                message1 = JSQMessage(senderId:"2",  displayName: "Otter", text: "Tell me more.")
            case 1 :
                message1 = JSQMessage(senderId:"2",  displayName: "Otter", text: "Wow! How about we check up on your goal called: " + goalsL[index].activity + "?")
            case 2:
                message1 = JSQMessage(senderId:"2",  displayName: "Otter", text: "Yeah! Let's keep it up by heading over to \"Practice\"")
            default:
                message1 = JSQMessage(senderId:"2",  displayName: "Otter", text: "What other feelings did you have today?")
            }
            messages.append(message1!)
            finishSendingMessage()
            
        case 3:
            var message1 = JSQMessage(senderId:"2",  displayName: "Otter", text: "What happened today?")
            switch randomSelection{
            case 0 :
                message1 = JSQMessage(senderId:"2",  displayName: "Otter", text: "Tell me more.")
            case 1 :
                message1 = JSQMessage(senderId:"2",  displayName: "Otter", text: "Let's check up on your goal called: " + goalsL[index].activity)
            case 2:
                message1 = JSQMessage(senderId:"2",  displayName: "Otter", text: "Hmmm. Walk me through your day.")
            default:
                message1 = JSQMessage(senderId:"2",  displayName: "Otter", text: "What happened today?")
            }
            messages.append(message1!)
            finishSendingMessage()
        default://Otter's tale //TODO: doesnt do much rn
            let message1 = JSQMessage(senderId:"2",  displayName: "Otter", text: "I went for a swim today. Anything new?")
            //messages.append(message1!)
            //finishSendingMessage()
        }
//        //default: "Otter tale"
//        if unpleasentFeelings.contains(text.lowercased()){
//            // messages.append("O sent")
//
//        }
//        //else if text.lowercased().range(of:"good") != nil {
//        else if (pleasentFeelings.contains(text.lowercased())){
//            // messages.append("O sent")
//
//        }
//        else if (neutralFeeligs.contains(text.lowercased())){
//
//
//        }

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
            return JSQMessagesAvatarImageFactory.avatarImage(withPlaceholder: UIImage(named: "otter-art.png")!, diameter:15)
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
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = (super.collectionView(collectionView, cellForItemAt: indexPath) as! JSQMessagesCollectionViewCell)
        let msg = messages[indexPath.row]
        if !msg.isMediaMessage {
           // if (msg.senderId == self.senderId) {
            cell.textView?.textColor = UIColor.white
            
                //cell.textView?.textColor = UIColor.white
            
        }
        return cell
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
            return bubbleFactory?.outgoingMessagesBubbleImage(with: UIColor(red:0.67, green:0.42, blue:0.22, alpha:1.0))
        }
        else{
            return bubbleFactory?.incomingMessagesBubbleImage(with: UIColor(red:0.20, green:0.64, blue:0.63, alpha:1.0))
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
    //Messages when chat Just Loads edit new text here
    func getMessages() -> [JSQMessage]{

        //var messages = [JSQMessage]()
        //Changed Defaults/Saved Data
        //let defaults = UserDefaults.standard
        //defaults.set(messages, forKey: "saved")
       // let message1 = JSQMessage(senderId:"1",  displayName: "S", text: "Hey how are you")
        //let message2 = JSQMessage(senderId: "2", displayName: "Otter", text: "Hey I'm Otter! How are you?")
        var message2 = JSQMessage(senderId: "2", displayName: "Otter", text: "Hey I'm Otter! How are you feeling today?")
        var copyMessage = messages.last//?//.copy()
        
        if (copyMessage == nil) {
            messages.append(message2!)

            //keep like a count using messages.count
            //can say every 5th message check up or maybe using date
            //only append first message for sure when
            //copyMessage ==nil
            //then maybe by message counts or days
            //have hello again consistent? or every nth time appear
        } else{
            if (copyMessage?.text.lowercased()=="anything new?" || copyMessage?.text.lowercased()=="hey i'm otter! how are you feeling today?" ){
                print ("hello world")
            }
            else{
             message2 = JSQMessage(senderId: "2", displayName: "Otter", text: "Anything new?")
             messages.append(message2!)
            }
            //if ()
             //message2 = JSQMessage(senderId: "2", displayName: "Otter", text: "Anything new?")
        }
  
        
      //  messages.append(message1!)
       // messages.append(message2!)
        return messages
    }
}
