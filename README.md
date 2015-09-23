respacer
========

respacer is a utility written in C++ whose purpose is to reconstruct a sentence given a string with no spaces. For example, given the string "itisiyourking", the likeliest sentence would be "it is i your king". (As of yet, punctuation can't be dealt with.)

To achieve this goal respacer must be given a plain dictionary file and a language model file such as one produced by [kenlm](https://github.com/kpu/kenlm).

Documentation and much more prose can be found [here](http://thierryseegers.github.io/respacer).
