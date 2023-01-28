cmake_minimum_required(VERSION 3.15)

project(bug VERSION 0.0.1 LANGUAGES CXX)

add_executable(bug)

target_sources(bug
	PRIVATE
		src/main.cpp
)
target_compile_definitions(bug
	PRIVATE
		VALUE=${SOME_VARIABLE}
)


install(TARGETS bug)
