//
//  MessageDataSourceImpl.swift
//  CleanArchictecture
//
//  Created by Uri on 3/9/24.
//

import Foundation

struct MessageDataSourceImpl: MessageDataSource {
    
    func getMessages() -> [Message] {
        return [
            Message(id: 1, text: "Hello, World"),
            Message(id: 2, text: "Hello, Darko"),
            Message(id: 3, text: "Hello, Beagle")
        ]
    }
}
