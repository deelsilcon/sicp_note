## Hierarchical Data and the Closure Property

### Key Conception

1. **Closure**: In general, an operation for combining data objects satisfies the closure property if the results of combining things with that operation can themselves be combined *using the same operation*

2. **Stratified design**: The notion that a complex system should be structured *as a sequence of levels that are described using a sequence of languages*.



### Summary

#### 1.Sequences

By using `cons`, we can easily build a sequence (an
ordered collection of data objects).

```scheme
(cons 1
	(cons 2
		(cons 3
			(cons 4 nil))))
```

And to simplify it, we use the syntax sugar 

```scheme
(list ⟨a1⟩ ⟨a2⟩ ... ⟨an⟩)
```

which is equivalent to:

```scheme
(cons ⟨a1⟩
	(cons ⟨a2⟩
		(cons...
			(cons ⟨an⟩
				nil)...)))
```

Due to the representation of sequence, we can design many convenient operations on it. For example:

```scheme
(define (length items)
	(if (null? items)
		0
		(+ 1 (length (cdr items)))))
```

One of the most important thing we need to know about list is that the `car` procedure is just like `*this` and `cdr` procedure is just like `*next`. By comparing it to some popular modern language like c++ or java will be helpful.

> `cadr args` is short for `(car (cdr args))`;

Most of the time we want to do the same thing on every element of the sequence, that’s why `map` is such a powerful tool. More specificly, `map procedure sequence` will lead to every element`ele` of the sequence being replaced with `procedure ele`.

```scheme
(map + (list 1 2 3) (list 40 50 60) (list 700 800 900))
;result: (741 852 963)
```

With sequence, we can build more complexed data type such as tree. A tree is a kind of a sequence whose elements are sequences. Tree is a good example of ***hierarchical structure***.

```scheme
(list (list 1 2 ) (list 3 4))
```

At last, ***conventional interfaces*** can be abstracted from sequences.![image-20201224173426653](https://github.com/deelsilcon/sicp_note/blob/master/pictures/image-20201224173426653.png)

The example in the book illustrates that we can simply use four conventional interfaces `enumberate`, `filter`, `map`, `accumulate` to implement difficult procedure as long as we implement conventional interfaces. 



#### 2.Stratified Design

Stratified design pervades the engineering of complex systems. For example, in computer engineering, resistors and transistors are combined (and described using a language of analog circuits) to produce parts such as and-gates and or-gates, which form the primitives of a language for digital-circuit design. These parts are combined to build processors, bus structures, and memory systems, which are in turn combined to form computers, using languages appropriate to computer architecture. Computers are combined to form distributed systems, using languages appropriate for describing network interconnections, and so on.