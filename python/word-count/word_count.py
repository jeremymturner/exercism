import re

def word_count(sentence):
    
    words = {}

    for word in re.split('[^a-zA-Z0-9]', sentence.lower()):
        if word != "":
            if word in words:
                words[word] = words[word] + 1
            else:
                words[word] = 1

    return words
