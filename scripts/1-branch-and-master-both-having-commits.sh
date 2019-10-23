#!/usr/bin/env bash

git init branch-and-master-both-having-commits 
cd branch-and-master-both-having-commits

echo "209012" > accounts.txt
git add accounts.txt
git commit -m "Initial commit"

sleep 0.1
git branch feature/actual-loss
git checkout feature/actual-loss
echo "209012:-5000" > actual-loss.txt
git add actual-loss.txt
git commit -m "Add actual loss on account 209012"

sleep 0.1
git checkout master
echo "328901" >> accounts.txt
git add accounts.txt
git commit -m"Add 328901 to the accounts"

sleep 0.1
git checkout feature/actual-loss
echo "209012:200" > remissions.txt
git add remissions.txt
git commit -m"Add remission on account 209012"

git checkout master
sleep 0.1
echo "458329" >> accounts.txt
git add accounts.txt
git commit -m"Add458329 to the accounts"

