float tempConverter(float F) {
    float C = (F - 32) * (5.0/9.0);
    return C;
}

void setup() {
    float F = 100;
    float C = tempConverter(F);
    println("Temperature in Celsius: " + C);
}
