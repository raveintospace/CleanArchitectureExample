//
//  GetMessage.swift
//  CleanArchictecture
//
//  Created by Uri on 3/9/24.
//

import Foundation

enum UseCaseError: Error {
    case networkError, decodingError, undefinedError
}

protocol GetMessagesProtocol {
    func execute() -> Result<[Message], UseCaseError>
}

struct GetMessagesUseCase: GetMessagesProtocol {
    var repository: MessageRepository
    
    func execute() -> Result<[Message], UseCaseError> {
        let messages = repository.getMessages()
        return .success(messages)
    }
}

