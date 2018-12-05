~s"""
  The four adjacent digits in the 1000-digit number that have the greatest product
  are 9 × 9 × 8 × 9 = 5832.

  73167176531330624919225119674426574742355349194934
  96983520312774506326239578318016984801869478851843
  85861560789112949495459501737958331952853208805511
  12540698747158523863050715693290963295227443043557
  66896648950445244523161731856403098711121722383113
  62229893423380308135336276614282806444486645238749
  30358907296290491560440772390713810515859307960866
  70172427121883998797908792274921901699720888093776
  65727333001053367881220235421809751254540594752243
  52584907711670556013604839586446706324415722155397
  53697817977846174064955149290862569321978468622482
  83972241375657056057490261407972968652414535100474
  82166370484403199890008895243450658541227588666881
  16427171479924442928230863465674813919123162824586
  17866458359124566529476545682848912883142607690042
  24219022671055626321111109370544217506941658960408
  07198403850962455444362981230987879927244284909188
  84580156166097919133875499200524063689912560717606
  05886116467109405077541002256983155200055935729725
  71636269561882670428252483600823257530420752963450

  Find the thirteen adjacent digits in the 1000-digit number that have the
  greatest product. What is the value of this product?
"""

series = ~S"""
73167176531330624919225119674426574742355349194934
96983520312774506326239578318016984801869478851843
85861560789112949495459501737958331952853208805511
12540698747158523863050715693290963295227443043557
66896648950445244523161731856403098711121722383113
62229893423380308135336276614282806444486645238749
30358907296290491560440772390713810515859307960866
70172427121883998797908792274921901699720888093776
65727333001053367881220235421809751254540594752243
52584907711670556013604839586446706324415722155397
53697817977846174064955149290862569321978468622482
83972241375657056057490261407972968652414535100474
82166370484403199890008895243450658541227588666881
16427171479924442928230863465674813919123162824586
17866458359124566529476545682848912883142607690042
24219022671055626321111109370544217506941658960408
07198403850962455444362981230987879927244284909188
84580156166097919133875499200524063689912560717606
05886116467109405077541002256983155200055935729725
71636269561882670428252483600823257530420752963450
"""

i =
  series
  |> String.replace("\n", "")
  |> String.split("", trim: true)

j =
  Enum.map(i, fn k ->
    k
    |> String.to_integer()
  end)

defmodule Adj do
  def greatest_product(<<prefix::binary-size(13), ending::binary>>) do
    IO.puts("Hello, #{prefix}#{ending}")
  end
end

# Adj.greatest_product(j)

~S"""
Count of non-empty substrings is n*(n+1)/2

If we include empty string also as substring, the count becomes n*(n+1)/2 + 1

How does above formula work?

Number of substrings of length one is n (We can choose any of the n characters)
Number of substrings of length two is n-1 (We can choose any of the n-1 pairs formed by adjacent)
Number of substrings of length three is n-2
(We can choose any of the n-2 triplets formed by adjacent)
In general, mumber of substrings of length k is n-k+1 where 1 <= k <= n
Total number of substrings of all lengths from 1 to n =
n + (n-1) + (n-2) + (n-3) + … 2 + 1
= n * (n + 1)/2
"""

# Python3 program to count number
# of substrings of a string

~S"""
def countNonEmptySubstr(str):
    n = len(str);
    return int(n * (n + 1) / 2);

# driver code
s = "abcde";
print (countNonEmptySubstr(s));
"""

n = length(j)
result = n * (n + 1) / 2
IO.puts(result)
