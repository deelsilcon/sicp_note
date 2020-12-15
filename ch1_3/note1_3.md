## Abstractions of Higher-Order Procedures

### Key Concepts

1. Procedures that manipulate procedures are called ***Higher-order Procedures***.



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