#!/bin/bash
# Backs up the dotfiles in $HOME, copies all the dirs in $RC_FILE_DIRS to
# $DOTFILE_DIR, and then force symlinks all of the files in $DOTFILE_DIR
# to corresponding dotfiles in $HOME. The $VIM_DIR will also be overwritten
# with the contents of vim/autoload and vim/bundle.

DOTFILE_BACKUP_DIR="${HOME}/.dotfile.backups"
DOTFILE_DIR="${PWD}"
RC_FILE_DIRS="emacs vim mux sh git"
VIM_DIR="${HOME}/.vim"
AUTOLOAD="${VIM_DIR}/autoload"
BUNDLE="${VIM_DIR}/bundle"

if [ ! -d "${DOTFILE_BACKUP_DIR}" ]
then
    mkdir "${DOTFILE_BACKUP_DIR}"
fi

for dir in ${RC_FILE_DIRS}; do
    for file in ${dir}/*; do
        if [ -f "${file}" ]
        then
            base=`basename ${file}`
            old_dotfile="${HOME}/.${base}"
            new_dotfile="${DOTFILE_DIR}/${dir}/${base}"
            if [ -f "${old_dotfile}" ]
            then
                echo "Backing up ${old_dotfile} to ${DOTFILE_BACKUP_DIR}"
                cp "${old_dotfile}" "${DOTFILE_BACKUP_DIR}"
            fi
            echo "Linking ${new_dotfile} to ${old_dotfile}"
            ln -fs "${new_dotfile}" "${old_dotfile}"
        fi
    done
done

if [ -d "${VIM_DIR}" ]
then
    echo "Syncing ${VIM_DIR} to ${DOTFILE_BACKUP_DIR}"
    VIM_BACKUP="${DOTFILE_BACKUP_DIR}/.vim"
    if [ -d  "${VIM_BACKUP}" ]
    then
        rm -rf "${VIM_BACKUP}"
    fi
    cp -r "${VIM_DIR}" "${VIM_BACKUP}"
    rm -rf "${VIM_DIR}"
fi
echo "Creating new .vim/ at ${HOME}"
mkdir "${VIM_DIR}"

echo "Linking vim/autoload and vim/bundle to ${VIM_DIR}"
ln -s "${DOTFILE_DIR}/vim/autoload" "${AUTOLOAD}"
ln -s "${DOTFILE_DIR}/vim/bundle" "${BUNDLE}"

echo "Syncing plugins..."
git submodule init
git submodule update
echo "Plugins synced"

echo
echo "==========================================="
echo "Finished installing dotfiles"
echo
echo "Manage your dotfiles from:"
echo -e '\t' "${DOTFILE_DIR}"
echo
echo "Your backups are located at:"
echo -e '\t' "${DOTFILE_BACKUP_DIR}"
echo "==========================================="
