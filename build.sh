for i in 8 9
do git checkout el${i}
docker buildx build --platform linux/amd64,linux/arm64 --push --pull -t registry.pupgizmo.com/rockylinux/rockylinux:${i} -f Dockerfile . 
done
git checkout main
