## Procedures and Process

### Key Concepts

1. A procedure is a pattern for the local evolution of a ***computional process***
2. Main pattern of process:
    - Linear recursive process
    - Linear iterative process
    - Tree recursion



### Summary

#### Linear Recursion and Iteration

Process which is characterized by a chain of deferred operations, is called a ***recursive process*** . If the length of the chain is proportional to n, we call it ***linear recursive process***.

```scheme
(define (fac n)
  (if (= n 1)
      1
      (* n (fac (- n 1)))))
```

Process whose state can be summarized by fixed number of state variables, together with a fixed rule that describe how the state variables should be updated and an end test that specifies conditions under which the process should terminate, is called ***iterative process***.If the number of the steps required is proportional to n, we call it ***linear recursive process***.

```scheme
(define (fac n)
  (fac-iter 1 1 n))
(define (fac-iter p c mx)
  (if (> c mx)
      p
      (fac-iter (* c p)
                (+ c 1)
                mx)))
```

> Note: In the book, it emphasize the difference between process and precedure. Process is used to describe the actual computation in a program and procedure is used to descibe the form of the computation in a program.



#### Tree Recursion

```scheme
(define (fib n)
  cond ((= n 0) 0)
  	   ((= n 1) 1)
  	   (else (+ (fib (- n 1))
                (fib (- n 2))))))
```

`fib` procedure calls itself twice each time it is invoked. If we draw the graph of its recursive-process, it will show us a tree. This is why we call it ***tree recursion***.
