def is_pangram(string):
    ALPHABET = 'abcdefghijklmnopqrstuvwxyz'
    string = string.lower()

    if any(letter not in string for letter in ALPHABET):
        return False

    return True