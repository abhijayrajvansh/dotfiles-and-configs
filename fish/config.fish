set fish_greeting

if status is-interactive
    clear
    #   here goes startup message
    alias getcontrol='fish /Users/abhijayrajvansh/.config/fish/greetme.fish'
    
    # Custom Functions:- version update and shortcuts
    # Terminal Custom: -
    alias remove-executables='rm *.out'
    alias g++='g++-12'
    alias gcc='gcc-12'
    alias pip='pip3'
    alias python='python3'
    alias py='python'
    alias kk='clear'
    alias app='python app.py'
    alias oo='open .'
    alias notes='cd /Users/abhijayrajvansh/Desktop/files && prg notes.txt'
    
    # login bots
    alias cf-login='codeforces-login'
    alias elab='cd /Users/abhijayrajvansh/Personal-Softwares/Elab-Login-Bot && app'

    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  GATE ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    alias gate='cd /Users/abhijayrajvansh/Desktop/GATE'

    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  VS Code  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    alias git-push-vscode-snippets='cp -r /Users/abhijayrajvansh/Library/Application\ Support/Code/user/snippets/ /Users/abhijayrajvansh/Desktop/programming-environment/vscode && cd /Users/abhijayrajvansh/Desktop/programming-environment/vscode && git-push "Updating User Snippets From VScode"'
    
    function push-templates
        git-push-vscode-snippets
        echo
        echo "Successfully Completed ✅, lesssgoo 🚀"
    end


    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Hackathons ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

        alias hackathons='cd /Users/abhijayrajvansh/Desktop/development/Hackathons'

    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  projects   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    alias project-time='cd /Users/abhijayrajvansh/Desktop/development/projects/Project-TIME'
    alias wb='python /Users/abhijayrajvansh/Desktop/development/projects/Launch-Websites/wb.py'
    alias url-remaker='cd /Users/abhijayrajvansh/Personal-Stuff/url-remaker'
    alias rajvansh-os='cd /Users/abhijayrajvansh/Desktop/development/projects/Rajvansh-os'
    
    function naruto  
        cd "/Users/abhijayrajvansh/Desktop/development/projects/Naruto-Bot" 
        app $argv
    end

    alias mygithub='cd /Users/abhijayrajvansh/Desktop/development/projects/Fire-Websites && py mygithub.py'



    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  SRM - Elab   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

        alias cn='cd /Users/abhijayrajvansh/Desktop/5th-SEM/Computer-Networks'
        alias dm='cd /Users/abhijayrajvansh/Desktop/5th-SEM/Discrete-Mathematics'
        alias nra='cd /Users/abhijayrajvansh/Desktop/5th-SEM/Network-Routing-Algorithm' 
        alias toc='cd /Users/abhijayrajvansh/Desktop/5th-SEM/Theory-Of-Computation'
        alias fla='toc'
        alias certificates='cd /Users/abhijayrajvansh/Desktop/5th-SEM/Certificate'
        
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Codeforces   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    alias codeforces='cd /Users/abhijayrajvansh/Desktop/codeforces'
    alias cf='codeforces'

    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Codechef   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


    alias codechef='cd /Users/abhijayrajvansh/Desktop/codechef'

    #Codechef Contest Bot
    function cc_sample_gen
        # Directory location of Codechef Bot
        /Users/abhijayrajvansh/Desktop/development/projects/Codechef-Contest-Bot && python3 app.py $argv
        # After running bot and downloading testcases
        codechef
        cd $argv
    end


    function 1000
        main
        cd /Users/abhijayrajvansh/Personal-Softwares/C2-Ladders-CFLogin-Bot
        app
    end
    
    
    #Codeforces Contest Bot
    function cf_sample_gen
        # Directory location of Codeforces Bot
        /Users/abhijayrajvansh/Desktop/development/projects/Codeforces-Contest-Bot && python3 app.py $argv
        # After running bot and downloading TC
        codeforces
        cd $argv && cd A
    end

    function upsolve
        # Directory location of Codeforces Bot
        /Users/abhijayrajvansh/Desktop/development/projects/Codeforces-Contest-Bot && python3 upsolver.py $argv
        # After running bot and downloading TC
        cf
        cd UPSOLVE 
    end 

    alias up='upsolve'

    # CommandLine Debug during contests:- Compile, Debug && Timed: C++
    function cpp # ABHIJAY_DEBUG FILE_NAME.cpp
        echo "Compiling" $argv" with G++17..."
        sleep 1
        g++ -std=c++17 $argv -o a.out && ./a.out
    end

    function deb # ABHIJAY_DEBUG FILE_NAME.cpp
        echo "[ABHIJAY_DEBUG MODE] Compiling" $argv.cpp" with G++17..."
        # sleep 1
        g++ -std=c++17 -DABHIJAY_DEBUG $argv.cpp && ./a.out
    end

    function runall # runnig  and testing sample testcases
        echo "Compiling main.cpp with G++17..."\n
        sleep 1
        # Compiling file
        g++ -std=c++17 main.cpp -o main.out
        #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        # Running testcases:
        if test -f sample_input_1.txt;
            ./main.out <sample_input_1.txt> my_output_1.txt
            if cmp -s sample_output_1.txt my_output_1.txt;
                echo Running Testcase 1:(set_color --bold green) 'Passed!'
                echo "Expected                              My Output"
                echo "``````````                           ````````````"
                diff -y -W 70 sample_output_1.txt my_output_1.txt
                echo ""
            else
                echo Running Testcase 1:(set_color --bold red) 'Failed'                
                echo "Expected                              My Output"
                echo "``````````                           ````````````"
                diff -y -W 70 sample_output_1.txt my_output_1.txt
                echo ""                
            end
        end
        if test -f sample_input_2.txt;
            ./main.out <sample_input_2.txt> my_output_2.txt
            if cmp -s sample_output_2.txt my_output_2.txt;
                echo Running Testcase 2:(set_color --bold green) 'Passed!'
                echo "Expected                               My Output"
                echo "``````````                            ````````````"
                diff -y -W 70 sample_output_2.txt my_output_2.txt
                echo "" 
            else
                echo Running Testcase 2:(set_color --bold red) 'Failed'                
                echo "Expected                               My Output"
                echo "``````````                            ````````````"
                diff -y -W 70 sample_output_2.txt my_output_2.txt
                echo ""                
            end
        end
        if test -f sample_input_3.txt;
            ./main.out <sample_input_3.txt> my_output_3.txt
            if cmp -s sample_output_3.txt my_output_3.txt;
                echo Running Testcase 3:(set_color --bold green) 'Passed!'
                echo "Expected                               My Output"
                echo "``````````                            ````````````"
                diff -y -W 70 sample_output_3.txt my_output_3.txt
                echo ""  
            else
                echo Running Testcase 3:(set_color --bold red) 'Failed'                
                echo "Expected                               My Output"
                echo "``````````                            ````````````"
                diff -y -W 70 sample_output_3.txt my_output_3.txt
                echo ""                
            end
        end
    end

    #for problemset A, B, C ... && Codechef codes for problems
    function runsamples # runnig and testing sample testcases
        echo "Compiling $argv.cpp with G++17..." \n
        sleep 1
        #navigating to problem dir:
        # cd ..
        cd $argv
        # Compiling file
        g++ -std=c++17 $argv.cpp -o $argv.out
        # Running testcases:
        if test -f sample_input_1.txt;
            ./$argv.out <sample_input_1.txt> my_output_1.txt
            if cmp -s sample_output_1.txt my_output_1.txt;
                echo Running Testcase 1:(set_color --bold green) 'Passed!' #(set_color normal)
                echo " Expected                              My Output"
                echo "```````````                           ````````````"
                diff -y -W 70 sample_output_1.txt my_output_1.txt
                echo ""
            else
                echo Running Testcase 1:(set_color --bold red) 'Failed' #(set_color normal)
                echo " Expected                              My Output"
                echo "```````````                           ````````````"
                diff -y -W 70 sample_output_1.txt my_output_1.txt
                echo ""
            end
        end
        if test -f sample_input_2.txt;
            ./$argv.out <sample_input_2.txt> my_output_2.txt
            if cmp -s sample_output_2.txt my_output_2.txt;
                echo Running Testcase 2:(set_color --bold green) 'Passed!' #(set_color normal)
                echo " Expected                              My Output"
                echo "```````````                           ````````````"
                diff -y -W 70 sample_output_2.txt my_output_2.txt
                echo ""
            else
                echo Running Testcase 2:(set_color --bold red) 'Failed' #(set_color normal)
                echo " Expected                              My Output"
                echo "```````````                           ````````````"
                diff -y -W 70 sample_output_2.txt my_output_2.txt
                echo ""
            end
        end
        if test -f sample_input_3.txt;
            ./$argv.out <sample_input_3.txt> my_output_3.txt
            if cmp -s sample_output_3.txt my_output_3.txt;
                echo Running Testcase 3:(set_color --bold green) 'Passed!' #(set_color normal)
                echo " Expected                              My Output"
                echo "```````````                           ````````````"
                diff -y -W 70 sample_output_3.txt my_output_3.txt
                echo ""
            else
                echo Running Testcase 3:(set_color --bold red) 'Failed' #(set_color normal)
                echo " Expected                              My Output"
                echo "```````````                           ````````````"
                diff -y -W 70 sample_output_3.txt my_output_3.txt
                echo ""
            end
        end
        if test -f sample_input_4.txt;
            ./$argv.out <sample_input_4.txt> my_output_4.txt
            if cmp -s sample_output_4.txt my_output_4.txt;
                echo Running Testcase 4:(set_color --bold green) 'Passed!' #(set_color normal)
                echo " Expected                              My Output"
                echo "```````````                           ````````````"
                diff -y -W 70 sample_output_4.txt my_output_4.txt
                echo ""
            else
                echo Running Testcase 4:(set_color --bold red) 'Failed' #(set_color normal)
                echo " Expected                              My Output"
                echo "```````````                           ````````````"
                diff -y -W 70 sample_output_4.txt my_output_4.txt
                echo ""
            end
        end

        cd ..
    end

    function checkfile 
        if test -f $argv;
            echo (set_color --bold green)"File Exist."
        else
            echo (set_color --bold red)"File Doesn't Exist."
        end
    end

    
    # alias deb-main='echo "[ABHIJAY_DEBUG MODE] Compiling main.cpp with G++17..." && g++ -DABHIJAY_DEBUG main.cpp -o main && ./main'


    # SRM and Academics:

    alias srm='cd /Users/abhijayrajvansh/Desktop/6th-Sem'
    alias academics='srm'
    alias tt='cd /Users/abhijayrajvansh/Desktop/5th-SEM && oo tt.jpeg'

    #Programming environment:
    alias programming-environment='desktop && cd programming-environment'
    alias template='cd /Users/abhijayrajvansh/Desktop/programming-environment/Templates'
    alias abhijayrajvansh.cpp='template && prg abhijayrajvansh.cpp'



    #Development:

    function dev # short form of development
        echo "Launching" $argv "DIR In VS Code Editor"
        echo "Grab some liquid & stay hydrated :)"  
        echo ""
        cd $argv
        code .
    end

    # Fish

    function reload
        echo "[Previous Direcotry:]"
        pwd
        fish
    end

    # function fish_prompt
    #     set -l prompt_symbol '$: '
    #     echo (set_color --bold green)'abhijay@macbook:'(set_color --bold blue)(prompt_pwd) \
    #     (set_color --bold yellow)$prompt_symbol(set_color normal) 
    # end

    function fish_prompt
        set -l prompt_symbol '$:'
        echo (set_color --bold green)'abhijay@macbook:'(set_color --bold blue)(pwd) \
        (set_color --bold yellow)$prompt_symbol(set_color normal)
    end

    function clean
        rm $argv
        touch $argv
    end

    function clear-dir
        rm -r $argv
        mkdir $argv
    end

    function prg
        # code ./contest-library
        touch $argv      
        code $argv
    end

    # github
    alias push='git-push "updating files & debugging"'
    alias latenight='git-push "Late-Night-Commits"'

    function git-push
        rm .DS_Store
        rm *.out
        rm debug_error.txt
        git add .
        git commit -m "$argv"
        git push
    end

    function push-fish
        echo [Previous Path Direcotry]
        echo " "
        echo
        echo "Copying config.fish to github fish repo..."
        echo
        cp -r /Users/abhijayrajvansh/.config/fish /Users/abhijayrajvansh/desktop/programming-environment
        programming-environment
        git-push "Updating Fish With Programming Environment 💙"    
        echo
        echo "Successfully Completed ✅"
    end

    function push-contest-library
        echo [Previous Path Direcotry]
        echo " "
        cd /Users/abhijayrajvansh/Desktop/competitive-programming/Contest-Library
        git-push "Updating more programs for CP"
    
    end

    function push-1000
        rm *.out
        rm my_output_1.txt
        rm my_output_2.txt
        rm my_output_3.txt
        rm my_output_4.txt
        rm debug.txt
        git-push "Upsolving Rating Level 1000"

    end


    # Creating files.cpp :-
    alias code-A='touch a.cpp && code a.cpp'
    alias code-B='touch a.cpp b.cpp && code a.cpp b.cpp'
    alias code-C='touch a.cpp b.cpp c.cpp && code a.cpp b.cpp c.cpp'
    alias code-D='touch a.cpp b.cpp c.cpp d.cpp && code a.cpp b.cpp c.cpp d.cpp'
    alias code-E='touch a.cpp b.cpp c.cpp d.cpp e.cpp && code a.cpp b.cpp c.cpp d.cpp e.cpp'
    # Creating files with pre texts in it:
    #echo "some text you want" >> "filename.extension"

    alias iosetup='touch input.txt output.txt debug.txt && code input.txt output.txt debug.txt'
    

    #Launching folder..
    alias fish-config='cd && cd /Users/abhijayrajvansh/.config/fish && code config.fish'
    alias fish-c='fish-config'
    alias zsh-config='cd && code .zshrc'
    alias desktop='cd && cd Desktop/'
    alias downloads='cd /Users/abhijayrajvansh/Downloads'
    alias personal-softwares='cd /Users/abhijayrajvansh/Personal-Softwares'

    alias books='cd /Users/abhijayrajvansh/Desktop/CP-Stuffs/books'
    alias config='cd ~/.config/'

    #System in build:
    alias movies='cd && cd movies'

    #Development:
    alias development='desktop && cd development'
    alias projects='development && cd projects'
    alias social-engineering='development && cd Social-Engineering'

    # Programming - Languages
    alias lang='cd /Users/abhijayrajvansh/Desktop/programming-languages'

    function push-lang
        lang
        git-push "Updaying programming languages and tech stack with modules 🚀"
        echo
        echo "Successfully Completed ✅"
    end



    #Competitive-Programming:-
    function main
        contest-library
        code .
        desktop
        prg main.cpp
    end

    #desktop
    alias competitive-programming='cd /Users/abhijayrajvansh/Desktop/Competitive-Programming'
    alias comp='competitive-programming'
    alias contest-library='cd /Users/abhijayrajvansh/Desktop/contest-library'
    alias localio='prg local.in local.out'

    function push-library
        contest-library
        git-push "Adding More Algorithms && Data Structures 🚀"
        echo ""
        echo "Successfully Completed ✅"
    end


    alias stl='cd /Users/abhijayrajvansh/desktop/competitive-programming/STL'
    alias containers='cd /Users/abhijayrajvansh/desktop/competitive-programming/containers'
    alias greedy='cd /Users/abhijayrajvansh/Desktop/competitive-programming/GREEDY'

    alias searching-sorting='cd /Users/abhijayrajvansh/Desktop/competitive-programming/SEARCHING-AND-SORTING'
    
    
    #DataStructures-Algorithms:-
    alias dsa='desktop && cd DataStructures-Algorithms'
    alias recursion='cd /Users/abhijayrajvansh/Desktop/DataStructures-Algorithms/RECURSION'
    alias arrays='dsa && cd ARRAYS'
    alias dp='cd /Users/abhijayrajvansh/Desktop/DataStructures-Algorithms/DYNAMIC-PROGRAMMING'

    # Github all push and commit && backup repo
    function push-dsa
        echo "[Previous Working Dir]"
        pwd
        echo ""
        dsa
        git-push "Adding New Data-Structures && Algorithms ✅"
        echo
        echo "Successfully Completed ✅, Lesssgoo 🚀"
    end

    

    #Launching Apps:
    alias cryptobot='projects && cd Cryptocurrency-Price-Bot && zsh bot-intro.sh'
    alias BIDcalulator='projects && cd Cryptocurrency-Biding-Calculator && zsh app-intro.sh && deb app.py' 
    alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
    alias codepy='cd /Users/abhijayrajvansh/Desktop/programming-languages/python && code app.py'

    #Downloading Files:
    alias download-cryptobot='projects && git clone https://github.com/abhijayrajvansh/Cryptocurrency-Price-Bot.git'
    alias download-BIDcalulator='projects && git clone https://github.com/abhijayrajvansh/Cryptocurrency-Biding-Calculator.git'


    # Whereis commands:-
    alias whereisfish='echo "/Users/abhijayrajvansh/.config/fish"'
    
    #Customization:

    # agrument Desktop : capital 1st letter
    alias showdesktop='defaults write com.apple.finder CreateDesktop true;killall Finder'
    alias hidedesktop='defaults write com.apple.finder CreateDesktop false;killall Finder'

    # function hide
    #     defaults write com.apple.finder Create$argv false
    #     killall Finder
    # end

    # function show
    #     defaults write com.apple.finder CreateDesktop true
    #     killall Finder
    # end


    # Startup commands:
    # echo "** Welcome Back Mr.Rajvansh **"
    # getcontrol
   
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# eval /Users/abhijayrajvansh/opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source

# Anaconda:
alias conda-on='eval /Users/abhijayrajvansh/opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source'
alias conda-off='conda deactivate'

# <<< conda initialize <<<
desktop

end