cmake_minimum_required(VERSION 3.10)
project(libvmod_jwt C)

set(CMAKE_C_STANDARD 11)

add_executable(libvmod_jwt
        src/vmod_jwt.c)
