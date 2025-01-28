#define CATCH_CONFIG_MAIN  // This tells Catch to provide a main() - only do this in one cpp file
#include "catch.hpp"
#include "functions_to_implement.h" 
#include <vector>

TEST_CASE("Sum test") {
    std::vector<int> vec = {1, 2};
    REQUIRE(Sum(vec) == 3);
}


TEST_CASE("Mult test") {
    std::vector<int> vec = {1, 2};
    REQUIRE(Product(vec) == 2);
}




