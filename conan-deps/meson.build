project('conan-deps', 'cpp',
    version: '0.1.0',
    default_options: ['cpp_std=c++17']
)

deps = [
    dependency('gtk+-3.0'),
    dependency('fmt',
        version: '>=7.0.0',
        method: 'cmake',
        cmake_module_path: meson.current_build_dir(),
        # modules: ['fmt::fmt'] # this is discovered automatically
    )
]

executable('conan-deps', 'src/main.cpp', dependencies: deps)
