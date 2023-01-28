#include <cstdio>

#define EXPAND(x) #x
#define STR(x) EXPAND(x)

int main() {
    std::printf("Value: %s\n", STR(VALUE));
}
