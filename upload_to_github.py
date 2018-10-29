#!/usr/bin/env python
#coding=utf-8 
import os
import subprocess
import shutil

name = os.getcwd().split('/')[-1]
spec = name + '.podspec'

def pushToGit(desc):
    url = "git@github.com:RayJiang16/"+name+".git"
    subprocess.call(["git", "add", "."])
    subprocess.call(["git", "commit", "-m", desc])
    subprocess.call(["git", "remote", "add", "origin", url])
    subprocess.call(["git", "push", "origin", "master"])

def tagToGit(ver):
    subprocess.call(["git", "tag", ver])
    subprocess.call(["git", "push", "--tags"])

def pushToRepo(spec):
    subprocess.call(["pod", "trunk", "push", spec, "--verbose", "--allow-warnings"])

if __name__ == '__main__':
    desc = raw_input("请输入备注:")
    ver  = raw_input("请输入版本:")
    pushToGit(desc)
    print("=========  已提交到远程库  =========")
    tagToGit(ver)
    print("=========  已打上Tag:" + ver + "  =========")
    pushToRepo(spec)
    print("=========  已提交到索引库  =========")
