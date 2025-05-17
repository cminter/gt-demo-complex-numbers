Extension { #name : #Number }

{ #category : #'*MoreNumbers' }
Number >> asComplex [
	^ Complex real: self imaginary: 0
]

{ #category : #'*MoreNumbers' }
Number >> i [
	^ Complex real: 0 imaginary: self
]
