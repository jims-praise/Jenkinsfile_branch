#!/bin/bash
# Directorio Backup
bdir="bkp_bash_configuration"
date=$(date "+%Y-%m-%d_%T")
backup_dir=${bdir}_${date}
bash_prompt="bash_prompt"
bashrc="bashrc"
bash_profile="bash_profile"
bash_aliases"bash_aliases"
mkdir $HOME/.${backup_dir}

#Respaldo archivo bash_prompt
if [ -e $HOME/.$bash_prompt ]
then
    cp $HOME/.$bash_prompt $HOME/.$backup_dir 
fi

# Respaldo archivo bashrc
if [ -e $HOME/.$bashrc ]
then
    cp $HOME/.$bashrc $HOME/.$backup_dir 
fi

# Respaldo archivo bash_profile
if [ -e $HOME/.$bash_profile ]
then
    cp $HOME/.$bash_profile $HOME/.$backup_dir 
fi

# Respaldo archivo bash_aliases
if [ -e $HOME/.$bash_aliases ]
then
    cp $HOME/.$bash_aliases $HOME/.$backup_dir 
fi


# Copiado de nuevos archivos con configuracion de color

echo -e "\n# <<<Adding New Prompt Bash Colors<<<\n" >> $HOME/.$bash_prompt
echo "cat ./.$bash_prompt >> $HOME/.$bash_prompt"
cat ./.$bash_prompt >> $HOME/.$bash_prompt
echo -e "\n# >>>Adding New Prompt Bash Colors>>>\n" >> $HOME/.$bash_prompt


echo -e "\n# <<<Adding New Prompt Bash Colors<<<\n" >> $HOME/.$bashrc
echo "cat ./.$bashrc  >> $HOME/.$bashrc"
cat ./.$bashrc  >> $HOME/.$bashrc
echo -e "\n# >>>Adding New Prompt Bash Colors>>>\n" >> $HOME/.$bashrc


echo -e "\n# <<<Adding New Prompt Bash Colors<<<\n" >> $HOME/.$bash_profile
echo "cat ./.$bash_profile  >> $HOME/.$bash_profile"
cat ./.$bash_profile  >> $HOME/.$bash_profile   
echo -e "\n# >>>Adding New Prompt Bash Colors>>>\n" >> $HOME/.$bash_profile


echo -e "\n# <<<Adding New Aliases<<<\n" >> $HOME/.$bash_aliases
echo "cat ./.$bash_aliases  >> $HOME/.$bash_aliases"
cat ./.$bash_aliases  >> $HOME/.$bash_aliases   
echo -e "\n# >>>Adding New Aliases>>>\n" >> $HOME/.$bash_aliases



# Borrado del respaldo en caso de no existir archivos a respaldar

total_archivos=$(ls -la $HOME/.$backup_dir | wc -l)

if [ $total_archivos -le 2 ]
then
    rm -rf $HOME/.$backup_dir
fi
