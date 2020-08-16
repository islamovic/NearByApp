//
//  Results.swift
//  NearByApp
//
//  Created by Islam on 8/15/20.
//  Copyright © 2020 Spaces. All rights reserved.
//

public enum Result<T, E: Error> {
    case
    success(T),
    error(E)

    public var isSuccess: Bool {
        switch self {
        case .success: return true
        default: return false
        }
    }

    public var isError: Bool {
        return !isSuccess
    }

    public var value: T? {
        switch self {
        case .success(let value): return value
        default: return nil
        }
    }

    public var error: E? {
        switch self {
        case .error(let error): return error
        default: return nil
        }
    }
}
