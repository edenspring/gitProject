{
    add_psql(){
        psql -t -A -c "CREATE USER AAINSTRUCTOR WITH PASSWORD 'password' CREATEDB LOGIN;"
        psql -t -A -c "CREATE DATABASE AASTUDENT WITH OWNER AAINSTRUCTOR;"
    }

    add_function(){
        echo "start"
        local profile;
        if [ "${SHELL}" == "/bin/bash" ]; then
            profile='.bashrc'
        elif [ "${SHELL}" == "/usr/local/bin/bash" ]; then
            profile='.bashrc'
        elif [ "${SHELL}" == "/bin/zsh" ]; then
            profile='.zshrc'
        else
            echo "Unsure of shell, exiting script"
            exit 1
        fi
        # echo $profile
        echo | >> ${HOME}/$profile
        curl -sS https://raw.githubusercontent.com/edenspring/project-gitr/main/src/function >> ${HOME}/$profile
        source ${HOME}/$profile
    }
    add_psql
    add_function    
}