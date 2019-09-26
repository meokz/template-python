import argparse


def main(args):
    """ main function """
    print(args)


if __name__ == "__main__":
    """ main endpoint """

    parser = argparse.ArgumentParser(
        description='description'
    )
    parser.add_argument('arg', help='description')
    args = parser.parse_args()
    main(args)
