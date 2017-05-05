def is_pangram(string):
    ALPHABET = 'abcdefghijklmnopqrstuvwxyz'
    string = string.lower()

    for letter in ALPHABET:
        if letter not in string:
            return False

    return True