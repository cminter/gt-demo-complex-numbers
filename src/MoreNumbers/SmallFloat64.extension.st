Extension { #name : #SmallFloat64 }

{ #category : #'*MoreNumbers' }
SmallFloat64 >> asComplex [
	^ Complex real: self imaginary: 0.0
]

{ #category : #'*MoreNumbers' }
SmallFloat64 >> i [
	^ Complex real: 0.0 imaginary: self
]
