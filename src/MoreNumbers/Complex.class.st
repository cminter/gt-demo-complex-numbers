Class {
	#name : #Complex,
	#superclass : #Object,
	#instVars : [
		'r',
		'i'
	],
	#category : #MoreNumbers
}

{ #category : #accessing }
Complex class >> real: rPart imaginary: iPart [
	^ Complex new
		r: rPart;
		i: iPart;
		yourself
]

{ #category : #accessing }
Complex >> * c2 [
	^ Complex real: r * c2 r - (i * c2 i) imaginary: r * c2 i + (i * c2 r)
]

{ #category : #operators }
Complex >> + v2 [ 
	^ (v2 isKindOf: Complex)
		ifFalse: [ self + v2 asComplex]
		ifTrue: [ Complex real: (r + v2 r) imaginary: (i + v2 i) ]
]

{ #category : #accessing }
Complex >> - c2 [ 
	^ Complex real: (r - c2 r) imaginary: (i - c2 i) 
]

{ #category : #accessing }
Complex >> / c2 [
	| d |
	d := c2 r squared + c2 i squared.
	^ Complex
		real: (r * c2 r + (i * c2 i)) / d
		imaginary: (i * c2 r - (r * c2 i)) / d
]

{ #category : #equality }
Complex >> = aValue [
	^ self r = aValue r and: self i = aValue i
]

{ #category : #equality }
Complex >> hash [
	^ ( r hash hashMultiply + i hash) hashMultiply
]

{ #category : #accessing }
Complex >> i [
	^ i
]

{ #category : #accessing }
Complex >> i: iPart [ 
	i := iPart
]

{ #category : #initalization }
Complex >> initialize [
	r := 0.
	i := 0
]

{ #category : #printing }
Complex >> printOn: aStream [
	| op |
	super printOn: aStream.
	op := i sign = -1
		ifTrue: [ '']
		ifFalse: [ '+' ].
	aStream << ' (' << r asString << op << i asString << 'i)'
]

{ #category : #accessing }
Complex >> r [
	^ r
]

{ #category : #accessing }
Complex >> r: rPart [ 
	r := rPart
]
