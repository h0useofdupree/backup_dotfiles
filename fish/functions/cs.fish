function cs
echo "Creating CSharp Project in $argv"
cd $argv
dotnet new console
cp ~/.scripts/omnisharp/omnisharp.json .
end
