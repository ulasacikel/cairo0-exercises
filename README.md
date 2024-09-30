# WHAT'S THIS ABOUT?

This repo follows the CairoZero tutorial exercises at <https://docs.cairo-lang.org/hello_cairo/index.html>
**Disclaimer:** My solutions might be incorrect or incomplete. Please double-check the solutions on your own.

To init the repo and run the cairo programs, make sure you have [set up the cairo environment  correctly](https://docs.cairo-lang.org/quickstart.html):
1. Install `python3.9`
2. Create the python3 venv `python3.9 -m venv .cairo_venv` and `source ./cairo_venv/bin/activate`
3. Install dependencies `sudo apt install -y libgmp3-dev` (ubuntu) or `brew install gmp` (mac)
4. Install the cairo-lang `pip3 install cairo-lang`
5. Compile the cairo program `cairo-compile fifteen_puzzle.cairo --output fifteen_puzzle_compiled.json`
6. Run the cairo program `cairo-run --program=fifteen_puzzle_compiled.json --print_memory --print_info --relocate_prints`