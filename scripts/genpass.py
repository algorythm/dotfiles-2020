#!/usr/bin/env python3
import secrets, string
import argparse

def create_password(length: int, use_lowercase: bool, use_uppercase: bool, use_digits: bool, use_symbols: bool) -> str:
    lowercase = string.ascii_lowercase
    uppercase = string.ascii_uppercase
    digits = string.digits
    symbols = """!@#?./*&%-_()'"+<>"""

    alphabet = ""
    if use_lowercase:
        alphabet += lowercase
    if use_uppercase:
        alphabet += uppercase
    if use_digits:
        alphabet += digits
    if use_symbols:
        alphabet += symbols

    contains_lowercase = not use_lowercase
    contains_uppercase = not use_uppercase
    contains_digits = not use_digits
    contains_symbols = not use_symbols

    while not (contains_lowercase & contains_uppercase & contains_digits & contains_symbols):
        password = gen_password(alphabet, length)

        for char in password:
            if char in lowercase:
                contains_lowercase = True
                continue
            if char in uppercase:
                contains_uppercase = True
                continue
            if char in digits:
                contains_digits = True
                continue
            if char in symbols:
                contains_symbols = True
                continue

    return password

def gen_password(alphabet: str, length: int) -> str:
    return ''.join(secrets.choice(alphabet) for i in range(length))

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Generates secure passwords')
    parser.add_argument('password_length', type=int, help='length of password', nargs='?', default=12)
    parser.add_argument('-l', help='lowercase', action="store_true")
    parser.add_argument('-u', help='uppercase', action="store_true")
    parser.add_argument('-d', help='digits', action="store_true")
    parser.add_argument('-s', help='symbols', action="store_true")

    args = parser.parse_args()
    if not args.l and not args.u and not args.d and not args.s:
        args.l = True
        args.u = True
        args.d = True
        args.s = True

    print(create_password(args.password_length, args.l, args.u, args.d, args.s))
