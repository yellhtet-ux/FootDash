//
//  MainViewReducer.swift
//  FootDash
//
//  Created by Andrew Hardin on 1/25/25.
//

import ComposableArchitecture

@Reducer 
struct MainReducer: Reducer {
    func reduce(into state: inout MainViewState, action: MainViewAction) -> Effect<MainViewAction> {
        switch action {
            case .selectedTabViewItem(_):
                return .none
        }
    }
}
