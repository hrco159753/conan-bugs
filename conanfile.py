from conan import ConanFile
from conan.tools.cmake import CMakeToolchain, CMake, cmake_layout


class bugRecipe(ConanFile):
    name = "bug"
    version = "0.0.1"
    package_type = "application"

    # Binary configuration
    settings = "os", "compiler", "build_type", "arch"
    options = { "someOption" : ["ANY"] }
    default_options =  { "someOption" : "<Unknown>" }

    # Sources are located in the same place as this recipe, copy them to the recipe
    exports_sources = "CMakeLists.txt", "src/*"

    def layout(self):
        cmake_layout(self)

    def generate(self):
        tc = CMakeToolchain(self)
        tc.variables["SOME_VARIABLE"] = self.options.someOption
        tc.generate()

    def build(self):
        cmake = CMake(self)
        cmake.configure()
        cmake.build()

    def package(self):
        cmake = CMake(self)
        cmake.install()
