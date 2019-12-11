#!/usr/bin/python

#from shutil import copy
from distutils.dir_util import copy_tree
import os, sys, json

print "Using /usr/bin/python"
print 'Installing Vim and dependencies'

srcDir = '/home/pj/repos/dotfiles'
homeDir = '/home/pj'

print "Creating vim directories"
try:
    os.makedirs('%s/.vim' % homeDir, 0755)
    os.makedirs('%s/.vim/bundle' % homeDir, 0755)
except:
    print('Failed to create vim directories', sys.exc_info())

print "Copying dotfiles"
try:
    copy_tree('%s/dotfiles/' % srcDir, '%s/' % homeDir)
except:
    print('Failed to copy dotfiles to home folder', sys.exc_info())

print "Installing vim modules via git"
try:
    os.chdir('%s/.vim/bundle' % homeDir)
    with open('%s/vim_packages.json' % srcDir, 'r') as read_file:
        vimRepos = json.load(read_file)
        for repo in vimRepos:
            os.system('git clone %s' % repo)
except:
    print('Failed installing vim bundles from git', sys.exc_info())

print "Installing zsh"
try:
    os.system('sudo apt-get update')
    os.system('sudo apt install zsh')
    os.system('sudo chsh -s /usr/bin/zsh root')
    os.system('exit')
    os.system('echo $SHELL')
except:
    print('Failed installing zsh', sys.exc_info())
