#!/usr/bin/ruby
#encoding: utf-8

# SETUP
# Add to .bash_profile
# export PATH=$PATH:~/defaults
# Make executable
# chmod +x t

list =  [   
            ['× Quit', ''], 
            ['⚐ Apache Access Log','sudo tail -f /var/log/apache2/access.log'],
            ['⚐ Apache Error Log','sudo tail -f /var/log/apache2/error.log'],
            ['⚐ System Log','sudo tail -f /var/log/syslog'],
            ['⚙ htdocs','cd /var/www/ && ls'],
]

i = 0

list.each do |command|
    print "\n [#{i}] #{command[0]}"
    i = i + 1
end 

puts "\n\n Yes, please ..."

tty_param = `stty -g`
system 'stty raw'
input = IO.read '/dev/stdin', 1
system "stty #{tty_param}"

selection = input.to_i

if selection == 0
    puts "Nevermind, bye."
    exit
end

selectedCommand = list[selection][1]
print "\r → #{selectedCommand} \r"
system(selectedCommand)
exit
