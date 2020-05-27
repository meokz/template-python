def main(args):
    """ main function """
    print("Hello Python!")


if __name__ == "__main__":
    """ main endpoint """
    import argparse
    parser = argparse.ArgumentParser(
        description='description'
    )
    args = parser.parse_args()
    main(args)
