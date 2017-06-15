def encode_result(result,count,c):
    if count > 1:
        return result + str(count) + c
    else:
        return result + c

def decode_result(result,count,c,i,line):
    if i > 0 and line[i-1].isdigit():
        return result + (int(count) * c)

    else:
        return result + c


def decode(line):
    result = ''
    count = ''

    for i, c in enumerate(line):

        # If it's the end of the line
        if i == len(line) - 1:
            result = decode_result(result,count,c,i,line)

        elif c.isdigit():
            count = count + str(c)

        # If the character is an alpha character
        elif c.isalpha() or c == ' ':

            result = decode_result(result,count,c,i,line)
            count = ''

    return result


def encode(line):

    result = ''
    count = 1

    for i, c in enumerate(line):

        # If it's the end of the line
        if i == len(line) - 1:
            result = encode_result(result,count,c)

        # If the next letter isn't the same
        elif c != line[i+1]:
            result = encode_result(result,count,c)
            count = 1

        # If the next letter is the same
        elif c == line[i+1]:
            count = count + 1

    return result