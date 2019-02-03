//
//  Deck.swift
//  CardLearning
//
//  Created by Aaron Tong on 2/2/19.
//  Copyright © 2019 Aaron Tong. All rights reserved.
//

import Foundation

class Deck {
    var cards : [Card]
    var title: String
    var theme: String
    
    init(title: String, theme: String)
    {
        self.cards = [Card]()
        self.title = title
        self.theme = theme
    }
    
    public func addCard(card newCard : Card)
    {
        cards.append(newCard)
    }
}

extension Deck {
    static func loadAllDecks() -> [Deck]
    {
        var allDecks = [Deck]()
        
        let testDeck1 = Deck(title: "外出", theme: "交通")
        testDeck1.addCard(card: Card(
            frontContent: "车站",
            index: "Bus station",
            backContent: "Bus station"
        ))
        testDeck1.addCard(card: Card(frontContent: "车票", index: "ticket", backContent: "ticket"))
        testDeck1.addCard(card: Card(frontContent: "售票员", index: "Conductor", backContent: "Conductor"))
        allDecks.append(testDeck1)
        
        let testDeck2 = Deck(title: "schedule", theme: "日常")
        testDeck2.addCard(card: Card(frontContent: "预约", index: "Appointment", backContent: "Appointment"))
        testDeck2.addCard(card: Card(frontContent: "电话", index: "Give a call", backContent: "a call"))
        allDecks.append(testDeck2)
        
        return allDecks;
    }
}
