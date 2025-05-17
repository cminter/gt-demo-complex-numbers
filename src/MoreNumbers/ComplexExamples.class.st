Class {
	#name : #ComplexExamples,
	#superclass : #Object,
	#category : #MoreNumbers
}

{ #category : #example }
ComplexExamples >> c1c2diff [
	<gtExample>
	| c cResult |
	c := self notEqualc1c2.
	cResult := (c at: 1) - (c at: 2).
	self assert: cResult equals: (Complex real: 2 imaginary: 6).
	^ cResult
]

{ #category : #example }
ComplexExamples >> c1c2prod [
	<gtExample>
	| c cResult |
	c := self notEqualc1c2.
	cResult := (c at: 1) * (c at: 2).
	self assert: cResult equals: (Complex real: 11 imaginary: -2).
	^ cResult
]

{ #category : #example }
ComplexExamples >> c1c2quot [
	<gtExample>
	| c cResult |
	c := self notEqualc1c2.
	cResult := (c at: 1) / (c at: 2).
	self assert: cResult equals: (Complex real: -1 imaginary: 2).
	^ cResult
]

{ #category : #example }
ComplexExamples >> c1c2sum [
	<gtExample>
	| c cResult |
	c := self notEqualc1c2.
	cResult := (c at: 1) + (c at: 2).
	self assert: cResult equals: (Complex real: 4 imaginary: 2).
	^ cResult
]

{ #category : #accessing }
ComplexExamples >> equalr1i2 [
	<gtExample>
	| c1 c2 |
	c1 := Complex real: 1 imaginary: 2.
	c2 := Complex new r: 1; i: 2; yourself.
	self assert: c1 equals: c2.
	^ c1
]

{ #category : #example }
ComplexExamples >> floatisum [
	<gtExample>
	| c1 c3 |
	c1 := self notEqualc1c2 at: 1.
	c3 := c1 + 1.2 i.
	self assert: c3 equals: (Complex real: 3 imaginary: 5.2).
	^ c3
]

{ #category : #example }
ComplexExamples >> floatrsum [
	<gtExample>
	| c1 c3 |
	c1 := self notEqualc1c2 at: 1.
	c3 := c1 + 1.2.
	self assert: c3 equals: (Complex real: 4.2 imaginary: 4).
	^ c3
]

{ #category : #accessing }
ComplexExamples >> init [
	<gtExample>
	| c |
	c := Complex new.
	self assert: c r equals: 0.
	self assert: c i equals: 0.
	^ c
]

{ #category : #example }
ComplexExamples >> notEqualc1c2 [
	<gtExample>
	| c1 c2 |
	c1 := Complex real: 3 imaginary: 4.
	c2 := Complex real: 1 imaginary: -2.
	self assert: c1 = c2 equals: false.
	^ OrderedCollection new add: c1; add: c2; yourself
]
