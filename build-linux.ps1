# Build huntercoind Linux binary using Docker Desktop on Windows
# Run from the root of your huntercore clone
# Output: huntercoind and huntercoin-cli in current directory

docker build -f Dockerfile.build -t huntercore:build .
docker create --name huntercore-extract huntercore:build
docker cp huntercore-extract:/usr/local/bin/huntercoind ./huntercoind
docker cp huntercore-extract:/usr/local/bin/huntercoin-cli ./huntercoin-cli
docker rm huntercore-extract
Write-Host "Built: huntercoind huntercoin-cli"
