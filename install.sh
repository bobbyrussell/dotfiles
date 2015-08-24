#!/bin/bash
# Backs up the dotfiles in $HOME, copies all the dirs in $RC_FILE_DIRS to
# $DOTFILE_DIR, and then force symlinks all of the files in $DOTFILE_DIR
# to corresponding dotfiles in $HOME

DOTFILE_DIR="${PWD}"
DOTFILE_BACKUP_DIR="${HOME}/.dotfile.backups"
RC_FILE_DIRS="emacs vim mux sh git"

if [ ! -d ${DOTFILE_DIR} ]
then
    mkdir "${DOTFILE_DIR}"
fi

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

echo "Finished installing the dotfiles. You can manage them from ${DOTFILE_DIR}"
