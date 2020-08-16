//
//  NetworkError.swift
//  NearByApp
//
//  Created by Islam on 8/15/20.
//  Copyright © 2020 NearByApp. All rights reserved.
//

import Alamofire

public enum NetworkError: Error, Equatable {
    case EmptyResponse
    case UnableToDecode
    case CannotParseResponse
    case NoInternet
    case UnAuthorized
    case NotFound
    case InValidData
    case AppNeedsToUpdate
    case Server(String, Int)
    case InvalidSMSCode
    case SMSRateExceeded
    case Unknown
    case ParsingCode
    case InvalidURL

    init(dataResponse response: AFDataResponse<Data>) {
        guard let serverResponse = response.response else {
            self = .Unknown
            return
        }

        let statusCode = serverResponse.statusCode
        guard let serverData = response.data else {
            let message = response.error?.localizedDescription ?? "Server error"
            self = .Server(message, statusCode)
            return
        }

        self = statusCode.review
        if statusCode.review == .Unknown {

            let json = (try? JSONSerialization.jsonObject(with: serverData, options: [])) as? JSON
            guard let serverErrorMessage = json?["message"] as? String else {
                self = .CannotParseResponse
                return
            }

            self = .Server(serverErrorMessage, statusCode)
        }
    }
}

extension Int {
    var review: NetworkError {
        switch self {
        case 401:
            return .UnAuthorized
        case 404:
            return .NotFound
        case 403:
            return .InValidData
        case 429:
            return .SMSRateExceeded
        case 442:
            return .AppNeedsToUpdate
        case 500:
            return .Server("Server Error", 500)
        case 555:
            return .ParsingCode
        case 1212:
            return .InvalidSMSCode
        case -1010:
            return .NoInternet
        default:
            return .Unknown
        }
    }
}

extension NetworkError: LocalizedError {

    public var localizedDescription: String {

        switch self {
        case .CannotParseResponse:
            return "Cannot Parse Response"
        default:
            return ""
        }
    }
}

