## Building Abstractions with Procedures

### Key Concepts

1. Computional process: ***Abstract*** of being that inhabit computers. They manipulate other abstract things called ***data***.
2. The elements of programming consists of three important parts:
    - Primitive Expressions, which represent the simplest entities the language is concerned with.
    - Means of Combination, by which compound elements are built from simpler ones.
    - Means of Abstraction, by which compound elements can be named and manipulated as units.



### Expressions

After we type an expression, the interpreter responds by displaying the result of its evaluating that expression.

```scheme
486
```

Expressions can be combined by operators.

```
(+ 486 1222)
(- 100 222)
```

The interpreter always runs in a read-eval-print loop: read an expression from terminal, evaluates the expression, and print the result.



#### Naming

By using the keyword `define`, we can easily identify a variable whose value is the object. 

```scheme
(define pi 3.14)
```



#### 