cmake_minimum_required(VERSION 3.0)

macro(CopyJavaFiles target destination)
    add_custom_target(
        CopyJavaFiles${} ALL
        COMMAND rm -rf ${destination}
        COMMAND mkdir -p ${destination}
        COMMAND rsync -a --exclude="*.jar" --exclude="*.h" --exclude="*.cxx" --exclude="*/" ${CMAKE_CURRENT_BINARY_DIR}/* ${destination}
        DEPENDS ${target}
    )
endmacro()