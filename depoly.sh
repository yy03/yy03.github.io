# 当发生错误时中止脚本
set -e

# npm run docs:build

# cd 到构建输出的目录下 
# cd docs/.vuepress/dist

# 部署到自定义域域名
echo 'www.yuanyeblog.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 部署到 https://<USERNAME>.github.io
git push -f git@github.com:yy03/yy03.github.io.git master

# 部署到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:yy03/blog.git master:gh-pages