file(GLOB _SRCS "*.h" "*.cc")
set(NAME ${PROJECT_NAME}_linear_solver)

# Will be merge in libortools.so
#add_library(${NAME} STATIC ${_SRCS})
add_library(${NAME} OBJECT ${_SRCS})
set_target_properties(${NAME} PROPERTIES
  CXX_STANDARD 11
  CXX_STANDARD_REQUIRED ON
  CXX_EXTENSIONS OFF
  POSITION_INDEPENDENT_CODE ON
)
# CMake < 3.12: CMakeError: Object library may not link to anything.
#target_link_libraries(${NAME} PRIVATE
#  absl::memory absl::container absl::strings absl::str_format
#  gflags::gflags glog::glog
#  protobuf::libprotobuf
#  Coin::Cbc
#  ${PROJECT_NAME}::proto)
target_include_directories(${NAME} PRIVATE
	${PROJECT_SOURCE_DIR}
	${PROJECT_BINARY_DIR}
	$<TARGET_PROPERTY:absl::memory,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:absl::container,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:absl::strings,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:absl::str_format,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:gflags::gflags,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:glog::glog,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:protobuf::libprotobuf,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:Coin::Cbc,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:${PROJECT_NAME}::proto,INTERFACE_INCLUDE_DIRECTORIES>)
target_compile_options(${NAME} PRIVATE
	$<TARGET_PROPERTY:absl::memory,INTERFACE_COMPILE_OPTIONS>
	$<TARGET_PROPERTY:absl::container,INTERFACE_COMPILE_OPTIONS>
	$<TARGET_PROPERTY:absl::strings,INTERFACE_COMPILE_OPTIONS>
	$<TARGET_PROPERTY:absl::str_format,INTERFACE_COMPILE_OPTIONS>
	$<TARGET_PROPERTY:gflags::gflags,INTERFACE_COMPILE_OPTIONS>
	$<TARGET_PROPERTY:glog::glog,INTERFACE_COMPILE_OPTIONS>
	$<TARGET_PROPERTY:protobuf::libprotobuf,INTERFACE_COMPILE_OPTIONS>
	$<TARGET_PROPERTY:Coin::Cbc,INTERFACE_COMPILE_OPTIONS>
	$<TARGET_PROPERTY:${PROJECT_NAME}::proto,INTERFACE_COMPILE_OPTIONS>
	)
target_compile_definitions(${NAME} PRIVATE
	$<TARGET_PROPERTY:absl::memory,INTERFACE_COMPILE_DEFINITIONS>
	$<TARGET_PROPERTY:absl::container,INTERFACE_COMPILE_DEFINITIONS>
	$<TARGET_PROPERTY:absl::strings,INTERFACE_COMPILE_DEFINITIONS>
	$<TARGET_PROPERTY:absl::str_format,INTERFACE_COMPILE_DEFINITIONS>
	$<TARGET_PROPERTY:gflags::gflags,INTERFACE_COMPILE_DEFINITIONS>
	$<TARGET_PROPERTY:glog::glog,INTERFACE_COMPILE_DEFINITIONS>
	$<TARGET_PROPERTY:protobuf::libprotobuf,INTERFACE_COMPILE_DEFINITIONS>
	$<TARGET_PROPERTY:Coin::Cbc,INTERFACE_COMPILE_DEFINITIONS>
	$<TARGET_PROPERTY:${PROJECT_NAME}::proto,INTERFACE_COMPILE_DEFINITIONS>
	)
add_dependencies(${NAME}
  absl::memory absl::container absl::strings absl::str_format
  gflags::gflags glog::glog
	protobuf::libprotobuf
  Coin::Cbc
  ${PROJECT_NAME}::proto)
add_library(${PROJECT_NAME}::linear_solver ALIAS ${NAME})

if (USE_XPRESS)
	target_include_directories(${NAME} PUBLIC ${XPRESSDIR}/include)
	if(UNIX)
		target_link_libraries(${NAME} PUBLIC ${XPRESSDIR}/lib/libxprs.so)
	elseif(MSVC)
		target_link_libraries(${NAME} PUBLIC ${XPRESSDIR}/lib/xprs.lib)
	endif()
endif(USE_XPRESS)

if (USE_CPLEX)
	target_include_directories(${NAME} PUBLIC
		${CPLEXDIR}/include
	)
	if(UNIX)
		target_link_libraries(${NAME} PUBLIC ${CPLEXDIR}/lib/x64_windows_vs2015/stat_mda/cplex1270.a)
	elseif(MSVC)
		target_link_libraries(${NAME} PUBLIC ${CPLEXDIR}/lib/x64_windows_vs2015/stat_mda/cplex1270.lib)
	endif()
endif(USE_CPLEX)