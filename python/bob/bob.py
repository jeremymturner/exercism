def question(sentence):

    if len(sentence) > 0:

        if sentence[-1] == '?':

            if sentence.isupper():
                return False

            return True

    return False

def yell(sentence):

    if sentence == sentence.upper() and any(x.isupper() for x in sentence):
        # If sentence is in all caps
        return True

    return False

def address(sentence):

    if sentence == '':
        return True

    # elif sentence

    return False

def hey(sentence):

    sentence = sentence.strip()

    if question(sentence):
        print "Question: " + sentence
        return "Sure."

    elif address(sentence):
        print "Address: " + sentence
        return "Fine. Be that way!"

    elif yell(sentence):
        print "Yell: " + sentence
        return "Whoa, chill out!"

    return "Whatever."

    
