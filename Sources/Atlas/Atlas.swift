public struct Country {
    public let code: String
    
    public init(code: String) {
	self.code = code.uppercased()
    }

    public var emojiFlag: String {
	return code.unicodeScalars.map { String(regionalIndicatorSymbol(unicodeScalar: $0)!) }.joined()
    }

    func regionalIndicatorSymbol(unicodeScalar: UnicodeScalar) -> Unicode.Scalar? {
    	let uppercaseA = Unicode.Scalar("A")
	let regionalIndicatorSymbolA = Unicode.Scalar("\u{1f1e6}")
	let distance = unicodeScalar.value - uppercaseA.value
	return Unicode.Scalar(regionalIndicatorSymbolA.value + distance)
    }
}
