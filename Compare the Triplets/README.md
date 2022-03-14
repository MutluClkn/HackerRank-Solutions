# HackerRank-Compare the Triplets
Solution of "Compare the Triplets" algorithm question.

# Question

Alice and Bob each created one problem for HackerRank. A reviewer rates the two challenges, awarding points on a scale from 1 to 100 for three categories: problem clarity, originality, and difficulty.

The rating for Alice's challenge is the triplet a = (a[0], a[1], a[2]), and the rating for Bob's challenge is the triplet b = (b[0], b[1], b[2]).

The task is to find their comparison points by comparing a[0] with b[0], a[1] with b[1], and a[2] with b[2].

1. If a[i] > b[i], then Alice is awarded 1 point.
2. If a[i] < b[i], then Bob is awarded 1 point.
3. If a[i] = b[i], then neither person receives a point.

Comparison points is the total points a person earned.

Given a and b, determine their respective comparison points.

## Example

a = [1, 2, 3]

b = [3, 2, 1]

1. For elements *0*, Bob is awarded a point because a[0] .
2. For the equal elements a[1] and b[1], no points are earned.
3. Finally, for elements 2, a[2] > b[2] so Alice receives a point.

The return array is [1, 1] with Alice's score first and Bob's second.

## Sample Input

5 6 7

3 6 10


## Sample Output

1 1

## Explanation

In this example:

1. a = (a[0], a[1], a[2]) = (5, 6, 7)
2. b = (b[0], b[1], b[2]) = (3, 6, 10)

Now, let's compare each individual score:

1. a[0] > b[0], so Alice receives 1 point.
2. a[1] = b[1], so nobody receives a point.
3. b[2] > a[2] , so Bob receives 1 point.

Alice's comparison score is 1, and Bob's comparison score is 1. Thus, we return the array [1, 1].
