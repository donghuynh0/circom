template identity_1 () {
    // y = (a + b) * (a + b)

    signal input a;
    signal input b;
    signal output y;

    y <== (a + b) * (a + b);

}

template identity_2 () {
    // y = (a - b) * (a - b)

    signal input a;
    signal input b;
    signal output y;

    y <== (a - b) * (a - b);

}

template identity_3 () {
    // y = (a - b) * (a + b)

    signal input a;
    signal input b;
    signal output y;

    y <== (a - b) * (a + b);
}

template identity_4 () {
    // y = (a + b ) ^ 3

    signal input a;
    signal input b;
    signal output y;

    signal a_plus_b <== a + b; // no contraints only add
    signal a_plus_b_sq <== a_plus_b * a_plus_b; // first contraint
    y <== a_plus_b_sq * a_plus_b; // second contraint
}


template identity_5 () {
    // y = (a - b ) ^ 3

    signal input a;
    signal input b;
    signal output y;

    signal a_minus_b <== a -b;
    signal a_minus_b_sq <== a_minus_b * a_minus_b;
    
    y <== a_minus_b_sq * a_minus_b;

}

template identity_6 () {
    // y = a ^ 3 + b ^ 3

    signal input a;
    signal input b;
    signal output y;

    signal a_plus_b <== a + b;
    signal b_minus_2a <== b - 2 * a;

    signal a_mul_a_plus_b <== a * a_plus_b;
    signal b_mul_b_minus_2a <== b * b_minus_2a;

    signal temp <== a_mul_a_plus_b + b_mul_b_minus_2a;

    y <== a_plus_b * temp;
}

template identity_7 () {
    // y = a ^ 3 - b ^ 3

    signal input a;
    signal input b;
    signal output y;

    signal a_minus_b <== a - b;
    signal a_plus_2b <== a + 2 * b;

    signal a_mul_a_plus_2b <== a * a_plus_2b;
    signal b_mul_a_minus_b <== b * a_minus_b;

    signal temp <== a_mul_a_plus_2b - b_mul_a_minus_b;

    y <== a_minus_b * temp;
}
