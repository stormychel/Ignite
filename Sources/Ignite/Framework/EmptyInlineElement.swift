//
// EmptyInlineElement.swift
// Ignite
// https://www.github.com/twostraws/Ignite
// See LICENSE for license information.
//

/// A placeholder element that renders nothing
/// Used as a default or fallback when no content is needed
public struct EmptyInlineElement: InlineElement {
    /// Creates a new empty element
    public nonisolated init() {}

    /// Returns self as the body content since this is an empty element
    public var body: some InlineElement { self }

    /// Whether this element belongs to the framework.
    public var isPrimitive: Bool { true }

    /// Renders this element as an empty string
    /// - Returns: An empty string
    public func markup() -> Markup {
        Markup()
    }
}
