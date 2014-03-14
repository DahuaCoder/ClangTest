# Project sources

set(${PROJECT_NAME}_SOURCES
    ${SRC_HEADER_FILES}
    Main.cpp
    Calculator.cpp
    )

add_executable(${PROJECT_NAME} ${@PROJECT_NAME@_SOURCES})

install(TARGETS ${PROJECT_NAME}
    RUNTIME
    DESTINATION build
    COMPONENT main)
