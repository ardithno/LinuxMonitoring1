function part2 {
    echo Total number of files = $(sudo ls $directory -lR | grep "^-" | wc -l)
    echo Number of:
    echo -e "Configuration files (with the .conf extension) = $(ls $directory | grep -c ".conf")"
    echo Text files = $(file "$directory"* | grep -c ":.* text")
    echo Executable files = $(sudo find "$directory"* -executable -type f | wc -l)
    echo -e "Log files (with the extension .log) = $(sudo ls $directory -lR | grep -c ".log")"
    echo Archive files = $(file "$directory"* | grep -c ":.* archive")
    echo Symbolic links = $(sudo ls $directory -lR | grep "^l" | wc -l)
}
