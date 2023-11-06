# This is a sample Python script.

# Press ⌃R to execute it or replace it with your code.
# Press Double ⇧ to search everywhere for classes, files, tool windows, actions, and settings.
import nltk
import sys
from nltk.tokenize.treebank import TreebankWordDetokenizer
import re


def print_hi(name):
    # Use a breakpoint in the code line below to debug your script.
    print(f'Hi, {name}')  # Press ⌘F8 to toggle the breakpoint.

# def detokenize_sentence(tokens):
#     detokenizer = nltk.tokenize.treebank.TreebankWordDetokenizer()
#     detokenized_sentence = detokenizer.detokenize(tokens)
#     return detokenized_sentence

def detokenize_sentence(tokens):
    # Replace -LRB- and -RRB- with the actual bracket characters
    tokens = [token.replace('-LRB-', '(').replace('-RRB-', ')').replace("''", '"') for token in tokens]
    # Initialize the detokenizer
    detokenizer = TreebankWordDetokenizer()
    # Detokenize the modified tokens list
    detokenized_sentence = detokenizer.detokenize(tokens)
    print(detokenized_sentence)

    # # Skipping it because it is messing around with ". or ", cases etc.
    # # Use a single regular expression to:
    # # - Ensure there's no space after an opening quote
    # # - Ensure there's no space before a closing quote
    # detokenized_sentence = re.sub(r'"\s(.*?)"', r' "\1"', detokenized_sentence)
    # detokenized_sentence = detokenized_sentence.replace("`", "'").replace("( ", "(")
    # detokenized_sentence = re.sub(r"'\s(.*?)'", r" '\1'", detokenized_sentence)
    # detokenized_sentence = re.sub(r"\s'\s", r"'", detokenized_sentence)

    return detokenized_sentence

# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    tokenized_data_file_path=sys.argv[1]
    detokenize_output_file_path=sys.argv[2]
    detokenize_sentence_list=[]
    with open(tokenized_data_file_path, 'r') as file:
        for i, line in enumerate(file):
            # detokenize using nltk.tokenize.treebank
            # tokenized_sentence = line.split(" ")
            # detokenized_sentence = detokenize_sentence(tokenized_sentence)

            # Just clean the sentence and then detokenize using Moses's perl script (detokenizer.perl).
            clean_sentence = line.replace('-LRB-', '(').replace('-RRB-', ')') \
                    .replace('-LCB-', '{').replace('-RCB-', '}') \
                    .replace('-LSB-', '[').replace('-RSB-', ']') \
                    .replace("''", '"').replace("`", "'").replace("--", "-").strip()
            detokenize_sentence_list.append(clean_sentence)

    with open(detokenize_output_file_path, 'w') as fp_o:
        fp_o.writelines('\n'.join(detokenize_sentence_list))
        fp_o.writelines('\n')

