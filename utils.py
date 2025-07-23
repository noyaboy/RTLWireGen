class Parser:
    """Simple parser to extract module defines and hierarchy from config.vh."""
    def __init__(self, filepath="config.vh"):
        self.filepath = filepath
        self.define_dict = {}
        self._parse()

    def _parse(self):
        current_module = None
        with open(self.filepath, 'r') as fh:
            for line in fh:
                line = line.strip()
                if not line:
                    continue
                if line.startswith('//'):
                    comment = line[2:].strip()
                    if '->' in comment:
                        module_part, subs_part = comment.split('->', 1)
                        module = module_part.strip()
                        submodules = [s.strip() for s in subs_part.split(',') if s.strip()]
                    else:
                        module = comment
                        submodules = []
                    current_module = module
                    entry = self.define_dict.setdefault(module, {"defines": {}, "submodules": []})
                    if submodules:
                        entry["submodules"] = submodules
                    continue
                if line.startswith('`define'):
                    tokens = line.split()
                    if len(tokens) < 3:
                        continue
                    name = tokens[1]
                    value = ' '.join(tokens[2:]).strip()
                    if value.startswith('`'):
                        value = value[1:]
                    try:
                        value = int(value)
                    except ValueError:
                        pass
                    if current_module is not None:
                        self.define_dict.setdefault(current_module, {"defines": {}, "submodules": []})
                        self.define_dict[current_module]["defines"][name] = value

if __name__ == "__main__":
    from pprint import pprint
    parser = Parser()
    pprint(parser.define_dict)
