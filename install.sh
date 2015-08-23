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
            dotfile="${HOME}/.${base}"
            if [ -f "${dotfile}" ]
            then
                cp "${dotfile}" "${DOTFILE_BACKUP_DIR}"
            fi
            ln -fs "${DOTFILE_DIR}/${dir}/${base}" "${dotfile}"
        fi
    done
done
