## Building Abstractions with Procedures

### Key Concepts

1. Computional process: ***Abstract*** of being that inhabit computers. They manipulate other abstract things called ***data***.
2. The elements of programming consists of three important parts:
    - Primitive Expressions, which represent the simplest entities the language is concerned with.
    - Means of Combination, by which compound elements are built from simpler ones.
    - Means of Abstraction, by which compound elements can be named and manipulated as units.

### Summary

#### Expressions

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



#### Naming and Environment

By using the keyword `define`, we can easily identify a variable whose value is the object. 

```scheme
(define pi 3.14)
```

The possibility of associating values with symbols and later retrieving them means that the interpreter must maintain sort of memory that keeps track of the name-object pairs. This memory is called ***Environment***.



#### Evaluating Combinations

To evaluate a combination, do the following:

- Evaluate the subexpressions of the combination.
- Apply the procedure that is the value of the leftmost subexpression to the arguments that are the values of the other subexpressions.



#### Compound Procedure

To define a procedure:

```scheme
(define (name parameters)
  body)
```

`name` is a symbol to be associated with the procedure definition in the environment. `parameters` are the names used within the body of the procedure to refer to the corresponding arguments of the procedure.

> It’s better not to use Parameter and Arguments interchangeably.

`body` is an expression that will yield the value of the procedure application.



#### The Substitution Model for Procedure Application

For compound procedures, the application process is as follows:

- To apply a compound procedure to arguments, evaluate the body of the procedure with each formal parameter replaced by the corresponding argument.

Here are two models for the evaluation.

- Normal-Order evaluation: Don’t evaluate the operands until their values are needed.
- Applicative-Order evaluation: Evaluate the operator and operands and then applies the resulting procedure to the resulting arguments.



#### Conditional Expressions and Prdicates

Conditional expressions:

```scheme
(cond (p1 e1)
	  (p2 e2)
	  (p3 e3)
	  ....
)
```

```scheme
（if predicate consequent alternative)
```

***predicate*** is used for procedures that return true or false, as well as for expressions that evaluate to true or false.

Logical composition operations:

- (and e1 e2 …)
- (or e1 e2 …)
- (not e)
