//
//  KakaoChatTableViewCell.swift
//  Twitter_starter
//
//  Created by James Kim on 7/27/20.
//  Copyright © 2020 James Kim. All rights reserved.
//

import UIKit

class KakaoChatTableViewCell: UITableViewCell {
    /*
     TODO: senderImageView, nameLabel, lastMessageLabel, lastSentDateLabel를 만들어서 outlet으로 추가해주세요.O
     */
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastSentDateLabel: UILabel!
    @IBOutlet weak var senderImageView: UIImageView!
    @IBOutlet weak var lastMessageLabel: UILabel!
    
    func configure(message: Message) {
        /*
         TODO: Cell이 생성되는 시점에서 메세지를 불러 렌더링해주세요
         
         예를들어..
         senderImageView.image = message.senderImage
         */
        nameLabel.text = message.senderName
        lastMessageLabel.text = message.lastMessage
        lastSentDateLabel.text = message.lastSentDate
        senderImageView.image  = message.senderImage
        
        senderImageView.clipsToBounds = true
        senderImageView.layer.cornerRadius = senderImageView.frame.width / 2
        
        lastMessageLabel.clipsToBounds = true
        lastMessageLabel.layer.cornerRadius = 5
//        lastMessageLabel.sizeToFit()
//        lastMessageLabel.sizeThatFits(CGSize(width: lastMessageLabel.frame.width / 3, height: 50))
    
//
        
    }
}
