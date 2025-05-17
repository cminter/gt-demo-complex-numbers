Extension { #name : #SmallInteger }

{ #category : #'*MoreNumbers' }
SmallInteger >> asComplex [
	^ Complex real: self imaginary: 0
]

{ #category : #'*MoreNumbers' }
SmallInteger >> i [
	^ Complex real: 0 imaginary: self
]
