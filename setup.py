'''
    Setup
'''

import os
import sys
from datetime import datetime

logo ='''
/////////////////////////////////////////////////////
///   __                 _____       __           ///
///  |  |   ____ _____ _/ ____\__  _|__| _____    ///
///  |  |  / __ \\\__  \\\   __\\\  \/ /  |/     \   ///
///  |  |_|  ___/ / __ \|  |   \   /|  |  Y Y  \  ///
///  |____/\____  \____ |__|    \_/ |__|_/|_|\_/  ///
///                  Installer                    ///
///                                               ///
/////////////////////////////////////////////////////
'''

os.system('clear')


def main():
    print(logo)
    print()
    print('''
    Select option:
        [1] Install
        [2] Uninstall
        [3] Credits
    ''')

    choice = input(''':: ''')
    print('')

    if choice == str('1'):
        os.system('clear')
        print(logo)

        print('''
        Select version:
            [1] Vim
            [2] NeoVim
        ''')

        ver = input(''':: ''')

        if ver == '1':
            print(f'Copying config file...')
            os.system('cp init.vim ~/.vimrc')
            print('Copied to ~/.vimrc')

            print('Installing VimPlug plugins manager')
            os.system('bash vimplug.sh')

            print('')
            print('LeafVim has finished setup. Start nvim and use the command :PlugInstall to finish plugin installation.')

        if ver == '2':
            print(f'Copying config file...')
            os.system('cp init.vim ~/.config/nvim/init.vim')
            print('Copied to ~/.config/nvim/init.vim')

            print('Installing VimPlug plugins manager')
            os.system('bash neovimplug.sh')

            print('')
            print('LeafVim has finished setup. Start nvim and use the command :PlugInstall to finish plugin installation.')



    elif choice == str('2'):
        check = input('Are you sure you want to uninstall LeafVim? This will revert NeoVim to a default installation. (y/N) ')
        if check == "y":
            print('Removing LeafVim config')
            os.system('rm ~/.config/nvim/init.vim')

            print('Removing LeafVim plugins file')
            os.system('rm ~/.config/nvim/leaf.plug')

            print('')
            print('Files removed from system.')



if __name__ =='__main__':
    main()
