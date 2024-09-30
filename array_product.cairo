%builtins output

from starkware.cairo.common.alloc import alloc
from starkware.cairo.common.serialize import serialize_word

func array_product(arr: felt*, size) -> felt {
    if (size == 0) {
        return 1;
    }

    // size is not zero and it's odd so we return 1
    let product_of_rest = array_product(arr=arr + 2, size=size - 2);
    return arr[0] * product_of_rest;

}

func main{output_ptr: felt*}() {
    const ARRAY_SIZE = 8;

    // Allocate an array.
    let (ptr) = alloc();

    // Populate some values in the array.
    assert [ptr] = 9;
    assert [ptr + 1] = 16;
    assert [ptr + 2] = 1;
    assert [ptr + 3] = 31;
    assert [ptr + 4] = 1;
    assert [ptr + 5] = 42;
    assert [ptr + 6] = 1;
    assert [ptr + 7] = 12;

    // Call array_sum to compute the sum of the elements.
    let sum = array_product(arr=ptr, size=ARRAY_SIZE);

    // Write the sum to the program output.
    serialize_word(sum);

    return ();
}