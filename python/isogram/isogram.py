def is_isogram(word):

    letters = []
    for l in word.lower():
        if l.isalpha() and l not in letters:
            letters += l
        elif l.isalpha() and l in letters:
            return False

    return True


