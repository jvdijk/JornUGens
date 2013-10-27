#minimal Cmake file for SuperCollider plugin 
cmake_minimum_required (VERSION 2.6) 
project (JornUGens) 

include_directories(${SC_PATH}/include/plugin_interface) 
include_directories(${SC_PATH}/include/common) 
#include_directories(${SC_PATH}/server/plugins) #optional, for FFT_UGens.h, if you need FFT stuff 
include_directories(${SC_PATH}/external_libraries/libsndfile/) 

set(CMAKE_SHARED_MODULE_PREFIX "") 
if(APPLE OR WIN32) 
set(CMAKE_SHARED_MODULE_SUFFIX ".scx") 
endif() 

add_library(JornUGens MODULE JornUGens.cpp)