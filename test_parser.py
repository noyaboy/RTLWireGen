from utils import Parser
from pprint import pprint

if __name__ == "__main__":
    parser = Parser('config.vh')
    data = parser.define_dict
    pprint(data)
