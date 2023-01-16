#!/usr/bin/env python3


# import random

# def generate_random_numbers():
# random_numbers = set()
# while len(random_numbers) < 6:
# random_numbers.add(random.randint(1, 49))
# return random_numbers

# print(generate_random_numbers()

import random

def get_random_set():
random_set = set()
while len(random_set) < 6:
random_set.add(random.randint(1, 49))
return random_set

print(get_random_set())
