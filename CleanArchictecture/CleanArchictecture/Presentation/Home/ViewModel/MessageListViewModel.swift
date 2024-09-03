//
//  MessageListViewModel.swift
//  CleanArchictecture
//
//  Created by Uri on 3/9/24.
//

import Foundation

// Data for view
@Observable
final class MessageListViewModel {
    
    var getMessagesUseCase = GetMessagesUseCase(repository: MessageRepositoryImpl(dataSource: MessageDataSourceImpl()))
    
    var messages: [Message] = []
    
    func getMessages() {
        let result = getMessagesUseCase.execute()
        switch result {
        case .success(let messages):
            self.messages = messages
        case .failure(let error):
            debugPrint(error)
        }
    }
}
