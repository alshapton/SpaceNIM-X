# Development pattern for contributors

1.  [Create a fork](https://help.github.com/articles/fork-a-repo/) of the [main SpaceNIM-X repository](https://github.com/alshapton/SpaceNIM-X) on GitHub.

2.  Make your changes in a branch named something different from `master`, e.g. create a new branch `my-pull-request`, where 'my-pull-request' is <issue number>-<short description> e.g. #98-add-crew-dets

3.  Please follow the [NIM Proposal #1 Standard Library Style Guide](https://nim-lang.org/docs/nep1.html) as much as possible - styling is still in flux in the NIM world, since it is a relatively new language - however, as the proposal states ".....it is nevertheless beneficial that certain community efforts, such as the standard library, should follow a consistent set of style guidelines when suitable." - it is therefore sensible that any NIM code that is written follows these same guidelines.

4.  Add new tests if necessary.

5.  Run the existing and any new tests (tests.nim is the current "all in one" test suite)

6.  SpaceNIM-X uses [Commitizen](http://commitizen.github.io/cz-cli/) to create a common format for commits. Follow the instructions in the "Making your repo Commitizen-friendly" section of the guide [here](http://commitizen.github.io/cz-cl/)

7.  [Create a pull request](https://help.github.com/articles/creating-a-pull-request/)   

Many thanks for contributing !

Once your contribution has been merged, your Github profile will appear in the README file for the project.