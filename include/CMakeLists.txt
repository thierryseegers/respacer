add_library(librespacer INTERFACE)

target_sources(librespacer
        INTERFACE respacer.h)

add_custom_target(respacer
        SOURCES respacer.h)
