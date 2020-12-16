## Abstractions of Higher-Order Procedures

### Key Concepts

1. Procedures that manipulate procedures are called ***Higher-order Procedures***.
2. Elements(in programming languages) with the fewest restrictions are said to have first-class status:
    - They may be named by variables
    - The may be passed as argument to procedures
    - The may be returned as the result of procedures
    - The may be included in data structures

### Summary

#### Procedures as Arguments

It’s very easy to notice that the similarity between multiplication and addition in $\mathbb{R}$: they are both binary opertation. So we can abstract the procedure from this perspective:

```scheme
(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a) (accumulate combiner null-value term (next a) next b))))
```

`a` and `b` gives an lower bound and upper bound for accumulate procedure. `null-value` is the basic case to use when terms run out. If we want to multiply numbers from `1` to `10`, it’s simple:

```scheme
(define (id a)
  a)
(define (mult a b)
  (* a b))
(define (inc a)
  (+ a 1))
(define nv 1)

(accumulate mult nv id 1 inc 10)
```

In order to do some calculation, we simply need to put the procedure in those “slots”, this is the power of abstraction.

#### Using lambda and let

In general, `lambda` is used to create procedures in the same way as define, except that no name is specifed for the procedure:

```scheme
(lambda (parameters) body)
```

`let` expression is simply syntactic sugar for the underlying lambda application.

```scheme
(let ((var1 exp1)
      (var2 exp2)
      ...
      (varn expn)
 body
)
```

The first part of `let` expression is a list of name-expression pairs. When the let is evaluated, each name is associated with the value of the corresponding expression. The body of the `let` is evaluated with these names bound as local varibles.

#### Procedures as General Methods or Returned Values

A more powerful kind of abstraction: procedures used to express general methods of computation, independent of the particular functions involved.

Also, Lisp awards procedures full first-class status, which means we can create procedures whose returned values are themselves procedures.