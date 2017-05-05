def to_rna(string):

    RNA = {
        'G': 'C',
        'C': 'G',
        'T': 'A',
        'A': 'U'
    }

    new_string = ''

    for letter in string:
        if letter in RNA.keys():
            new_string += RNA[letter]
        else:
            return ''

    return new_string        
        