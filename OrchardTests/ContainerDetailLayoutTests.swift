import Foundation
import Testing
@testable import Orchard

@Test("Container detail key/value tables preserve room for values")
func detailKeyValueTableCapsLongKeys() {
    let longEnvironmentKey = "CODEX_LB_PROXY_UNAUTHENTICATED_CLIENT_CIDRS"

    #expect(
        DetailKeyValueTableLayout.keyColumnWidth(for: [longEnvironmentKey])
            == DetailKeyValueTableLayout.maximumKeyColumnWidth
    )
}

@Test("Container detail key/value tables retain natural width for short keys")
func detailKeyValueTableKeepsShortKeyWidth() {
    #expect(DetailKeyValueTableLayout.keyColumnWidth(for: ["PATH"]) == 50)
}
