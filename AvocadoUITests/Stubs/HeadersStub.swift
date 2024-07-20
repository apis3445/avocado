//
//  HeadersStub.swift
//  AvocadoUITests
//
//  Created by Abigail Armijo Hernández on 28/06/24.
//

import SBTUITestTunnelClient

enum HeadersStub {
    case getHeaders
    case emptyList
    case failure(code: Int)
    
    func start() {
        let request = SBTRequestMatch(url: "/Header", method: "GET")
        var fileToMock: String;
        switch self {
        case .getHeaders:
            fileToMock = "headers.json"
        case .emptyList:
            fileToMock = "empty.json"
        case .failure(let code):
            fileToMock = "headers.json"
        }
        let response = SBTStubResponse(fileNamed: fileToMock)
        BaseTest.shared.app.stubRequests(matching: request, response: response)
    }
}
