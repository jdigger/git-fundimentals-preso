git init

git config user.name "Git Fundimentals"

git config user.email "gitfund@git.com"

echo "Some cowbell" > file1.txt

echo "Just some file2 data" > file2.txt

mkdir morefiles ; cp file1.txt morefiles/file3.txt

git hash-object file1.txt
77bd771f7fefc66994a22d922cad923ae068675a

git hash-object file2.txt
63ffb2bff74e9161a82b82999718f441df6a68f1

git hash-object morefiles/file3.txt
77bd771f7fefc66994a22d922cad923ae068675a

git add file1.txt file2.txt morefiles/file3.txt

git commit -m "First good version"
[master (root-commit) a8036eb] First good version
 3 files changed, 3 insertions(+)
 create mode 100644 file1.txt
 create mode 100644 file2.txt
 create mode 100644 file3.txt

git cat-file -p COMMIT
tree 0550b757d5b412ab40416d2c7ede1313d1c38087
author Git Fundimentals <gitfund@git.com> 1409699490 -0600
committer Git Fundimentals <gitfund@git.com> 1409699490 -0600

First good version

git cat-file -p 0550b75
100644 blob 77bd771f7fefc66994a22d922cad923ae068675a  file1.txt
100644 blob 63ffb2bff74e9161a82b82999718f441df6a68f1  file2.txt
040000 tree cb63181eaa27bf4caedf9d9d212840206a77c11d  morefiles

git cat-file -p cb63181
100644 blob 77bd771f7fefc66994a22d922cad923ae068675a  file3.txt

git cat-file -p 77bd771
Some cowbell

find .git/objects -type f
.git/objects/05/50b757d5b412ab40416d2c7ede1313d1c38087
.git/objects/3b/1b4ff08b048aceeb4ccb38739101ec94b8fd01
.git/objects/63/ffb2bff74e9161a82b82999718f441df6a68f1
.git/objects/77/bd771f7fefc66994a22d922cad923ae068675a
.git/objects/cb/63181eaa27bf4caedf9d9d212840206a77c11d

cat .git/HEAD
ref: refs/heads/master

cat .git/refs/heads/master
3b1b4ff08b048aceeb4ccb38739101ec94b8fd01

echo "More cow-bell\!" > file1.txt

git commit -am "Added more cow-bell."
[master 7581387] Added more cow-bell.
 1 file changed, 1 insertion(+), 1 deletion(-)

git cat-file -p 7581387
tree 366612747e1b0730cdbb680bb48ba6132b321848
parent 3b1b4ff08b048aceeb4ccb38739101ec94b8fd01
author Git Fundimentals <gitfund@git.com> 1409885160 -0600
committer Git Fundimentals <gitfund@git.com> 1409885160 -0600

Added more cow-bell.

git cat-file -p 3666127
100644 blob faff7b9f491fea306a748f2e17e536918fb6a601  file1.txt
100644 blob 63ffb2bff74e9161a82b82999718f441df6a68f1  file2.txt
040000 tree cb63181eaa27bf4caedf9d9d212840206a77c11d  morefiles

mv file2.txt wow.txt

mv morefiles hasfiles

git add -A

git commit -m "Renamed files"
[master e001241] Renamed files
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename {morefiles => hasfiles}/file3.txt (100%)
 rename file2.txt => wow.txt (100%)

git cat-file -p e001241
tree 96996c4fd8813d8854ebeee54d753115cb8a880f
parent 758138729b824c8aabecff1a961202f8fd7d50df
author Git Fundimentals <gitfund@git.com> 1409888276 -0600
committer Git Fundimentals <gitfund@git.com> 1409888276 -0600

Renamed files

git cat-file -p 96996c4f
100644 blob faff7b9f491fea306a748f2e17e536918fb6a601  file1.txt
040000 tree cb63181eaa27bf4caedf9d9d212840206a77c11d  hasfiles
100644 blob 63ffb2bff74e9161a82b82999718f441df6a68f1  wow.txt


git tag t

cat .git/refs/tags/t
e0012413fb1c0728dc1d9b86c9b074dfc24a220a

git cat-file -t e001241
commit

git tag -a annTag -m "annotated tag here"

cat .git/refs/tags/annTag
85aca4362a29ddb70a70c6d6f882d4c1e04b2eb3

git cat-file -t 85aca43
tag

git cat-file -p 85aca43
object e0012413fb1c0728dc1d9b86c9b074dfc24a220a
type commit
tag annTag
tagger Git Fundimentals <gitfund@git.com> 1410039830 -0600

annotated tag here
