void reduce(inout float x){
    x-=0.1;
    //return true;
}


void main() {
    float a = 1.0;
    float b = 2.0;
    float c = 3.0;

    // in an assignment on the last element is returned, side effects still happen
    c = (reduce(a), reduce(b), 0.5);

    // sequence operator can also be used outside an assignment (rare, but happens inside loops when code golfin).
    reduce(a), reduce(b), reduce(c);
}