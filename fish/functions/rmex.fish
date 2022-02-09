function rmex
find . ! -name $argv -type f -exec rm -f {} +
end
