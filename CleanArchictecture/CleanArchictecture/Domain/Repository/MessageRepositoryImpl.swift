//
//  MessageRepositoryImpl.swift
//  CleanArchictecture
//
//  Created by Uri on 3/9/24.
//

import Foundation

struct MessageRepositoryImpl: MessageRepository {
    
    var dataSource: MessageDataSource
    
    func getMessages() -> [Message] {
        return dataSource.getMessages()
    }
}
