//
//  ForEach.swift
//  TaskListApp
//
//  Created by Arina on 07.05.2023.
//

import SwiftUI
public extension ForEach where Content: View {
    init<Base: RandomAccessCollection> (
        _ base: Base,
        @ViewBuilder content: @escaping (Base.Index) -> Content
    )
    where
    Data == IndexedCollection<Base>,
    Base.Element: Identifiable,
    ID == Base.Element.ID
    {
        self.init(IndexedCollection(base), id: \.element.id) {
            index, _ in content (index)
        }
    }
}

