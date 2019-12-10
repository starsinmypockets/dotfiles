#!/usr/bin/python

#from shutil import copy
from distutils.dir_util import copy_tree
import os, sys, json

print "Using /usr/bin/python"
print 'Installing Vim and dependencies'

srcDir = '/Users/paulwalker/install'
targetDir = '/Users/paulwalker/tmp/sandbox'

try:
    os.makedirs(targetDir, 0755)
    os.makedirs('%s/vim' % targetDir, 0755)
    os.makedirs('%s/vim/bundle' % targetDir, 0755)
except:
    print "Failed creating vim directories"
    pass

try:
    copy_tree('%s/dotfiles/' % srcDir, '%s/' % targetDir)
except:
    print('Failed to copy dotfiles to home folder', sys.exc_info())
    pass

os.chdir('%s/vim/bundle' % targetDir)
with open('%s/vim/vim_packages.json' % srcDir, 'r') as read_file:
    vimRepos = json.load(read_file)
    for repo in vimRepos:
        os.system('git clone %s' % repo)
