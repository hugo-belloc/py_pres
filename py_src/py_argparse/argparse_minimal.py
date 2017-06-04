import argparse


def main(args=None):
    desc = "Exemple de parseur ligne de commande"
    parser = argparse.ArgumentParser(description=desc)
    parser.add_argument("positional_arg")
    parser.add_argument("-o", "--optional-arg")
    args = parser.parse_args(args)
    print("positional_arg={}".format(args.positional_arg))
    print("optional_arg={}".format(args.optional_arg))

if __name__ == "__main__":
    main()