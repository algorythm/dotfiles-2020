#!/usr/bin/env python3
from __future__ import annotations
import logging
import subprocess
from os import environ
from sys import platform
from pathlib import Path
from shutil import which


oh_my_zsh_path = Path(Path.home()) / '.oh-my-zsh'
logger = logging.getLogger(__name__)

def oh_my_zsh_is_installed() -> bool:
   return oh_my_zsh_path.is_dir()

def zsh_is_installed() -> bool:
   return which('zsh') != None

def install_zsh():
   # TODO: Call zsh installation script
   logging.info('Installing zsh')
   raise NotImplementedError()

def install_oh_my_zsh():
   # TODO: Call oh-my-zsh installation script
   logging.info('Installing oh-my-zsh')
   subprocess
   raise NotImplementedError()

def get_default_shell() -> Path:
   cmd = None

   if platform == 'darwin':
      cmd = """dscl . -read /Users/$(whoami) UserShell | cut -d' ' -f2"""
   elif platform == 'linux' or platform == 'linux2':
      cmd = """getent passwd | awk -F: -v user="$(whoami)" '$1 == user {print $NF}'"""
   else:
      raise NotImplementedError(f'"{platform} is not supported by this script')
   
   return subprocess.check_output(cmd, shell=True, text=True).split('\n')[0]

def set_default_shell(shell: str):
   shell_path = which(shell)
   logger.info(f'Setting default shell to "{shell_path}"')
   raise NotImplementedError()

def main():
   default_shell = Path(get_default_shell())

   if not zsh_is_installed():
      logger.info(f'zsh is not installed')
      install_zsh()

   if default_shell.name != 'zsh':
      set_default_shell('zsh')

if __name__ == "__main__":
   main()
