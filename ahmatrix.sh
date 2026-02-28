#!/bin/bash

# ===================== COLORS =====================
green="\e[32m"
red="\e[31m"
yellow="\e[33m"
cyan="\e[36m"
purple="\e[35m"
reset="\e[0m"

# ===================== TYPEWRITER EFFECT =====================
typewriter(){
  text="$1"
  for (( i=0; i<${#text}; i++ )); do
    echo -ne "${text:$i:1}"
    sleep 0.008
  done
  echo ""
}

# ===================== PROGRESS BAR =====================
progress(){
  echo -ne "["
  for i in {1..30}; do
    echo -ne "#"
    sleep 0.01
  done
  echo "]"
}

# ===================== BANNER =====================
banner(){
  clear
  echo -e "${green}"
  echo " █████╗ ██╗  ██╗███╗   ███╗ █████╗ ████████╗██████╗ ██╗██╗  ██╗"
  echo "██╔══██╗██║  ██║████╗ ████║██╔══██╗╚══██╔══╝██╔══██╗██║╚██╗██╔╝"
  echo "███████║███████║██╔████╔██║███████║   ██║   ██████╔╝██║ ╚███╔╝ "
  echo "██╔══██║██╔══██║██║╚██╔╝██║██╔══██║   ██║   ██╔══██╗██║ ██╔██╗ "
  echo "██║  ██║██║  ██║██║ ╚═╝ ██║██║  ██║   ██║   ██║  ██║██║██╔╝ ██╗"
  echo ""
  echo -e "${red}             AHMATRIX TECH"
  echo -e "${yellow}        Developer : Ahmad Waseem"
  echo -e "${cyan}Full Stack Developer | SEO Specialist | Cyber Tools Creator"
  echo -e "${reset}"
}

# ===================== MATRIX EFFECT =====================
matrix(){
  for i in {1..40}; do
    echo -e "${green}010101010101010101010101010101010101010101"
    sleep 0.01
  done
}

# ===================== HACK SIMULATION =====================
hack(){
  echo -e "${red}Connecting to target server...${reset}"
  sleep 1
  progress
  echo "Bypassing firewall..."
  sleep 1
  progress
  echo "Injecting payload..."
  sleep 1
  progress
  echo -e "${green}Access granted (simulation)${reset}"
}

# ===================== NETWORK SCAN =====================
scan(){
  echo -e "${cyan}Scanning network...${reset}"
  sleep 1
  echo "192.168.0.1 - Router"
  sleep 0.5
  echo "192.168.0.10 - Laptop"
  sleep 0.5
  echo "192.168.0.23 - Mobile"
  sleep 0.5
  echo -e "${green}Scan complete${reset}"
}

# ===================== SYSTEM INFO =====================
systeminfo(){
  echo ""
  echo -e "${yellow}Developer : Ahmad Waseem"
  echo "Role : Full Stack Developer | SEO Specialist | Cyber Tools Creator"
  echo "Organization : Ahmatrix Tech"
  echo "System : Hacker Terminal Portfolio"
  echo "Kernel : Bash"
  echo ""
}

# ===================== AI ASSISTANT SIMULATION =====================
ai(){
  typewriter "Hello! I am your AI assistant inside Ahmatrix Terminal."
  typewriter "You can ask me about commands, projects, or portfolio info."
  typewriter "Type 'help' to see available commands."
}

# ===================== MINI GAME =====================
game(){
  number=$(( RANDOM % 10 ))
  echo "Guess number between 0-9"
  read guess
  if [ "$guess" -eq "$number" ]; then
    echo -e "${green}Correct!${reset}"
  else
    echo -e "${red}Wrong. Number was $number${reset}"
  fi
}

# ===================== VIRTUAL FILE SYSTEM =====================
current_dir="home"

ls_cmd(){
  if [ "$current_dir" = "home" ]; then
    echo "about.txt  skills.txt  projects.txt  contact.txt"
  fi
}

cat_cmd(){
  case $1 in
    about.txt)
      echo "Ahmad Waseem
Full Stack Dev | SEO | Cyber Tools
Websites 🚀 AI 🤖 Automation ⚙️ Cyber 🛡
Boost Clients 📈 Convert Visitors 💼 Solve Problems
Founder: Ahmatrix Tech"
      ;;
    skills.txt)
      echo "💻 Full Stack Web Dev      → High-Performance Websites & Web Apps
🤖 AI Agentic Systems      → Automate Tasks & Boost Efficiency
⚙️ Automated Tools        → Custom Dashboards & Workflow Automation
🛡 Cyber Tools Dev         → Secure & Innovative Solutions
📈 SEO & Digital Growth    → Rank Higher & Attract Clients
🎨 UI/UX Design            → Modern Interfaces & Conversion Focus
🔗 Data Integration / APIs → Connect Tools, Apps & Websites
🖌 Branding & Graphic Design → Impactful Visuals for Business"
      ;;
    projects.txt)
      echo "Ahmatrix Tech Toolkit with a lot of Tools"
      echo "Terminal Portfolio"
      echo "Cyber Tools Development"
      ;;
    contact.txt)
      echo "Email : ahmavia786@gmail.com"
      echo "Location : Pakistan"
      echo "Whatsapp : +923280691297"
      ;;
    *)
      echo "File not found"
      ;;
  esac
}

# ===================== BOOT SEQUENCE =====================
boot(){
  echo -e "${green}Booting Ahmatrix Tech Terminal..."
  sleep 0.5
  echo "Loading developer modules..."
  progress
  echo "Initializing cyberpunk interface..."
  progress
  echo "Connecting database..."
  progress
  sleep 1
  banner
}

# ===================== START TERMINAL =====================
boot
typewriter "Welcome to Ahmatrix Tech Terminal"
typewriter "Interactive Developer Portfolio"
echo ""
echo "Type 'help' to view commands"
echo ""

while true; do
  echo -ne "${green}ahmatrix@terminal:${cyan}/$current_dir${reset}$ "
  read cmd arg

  case $cmd in

help)
  echo -e "${yellow}Available Commands:${reset}"
  echo -e "\e[31m• help\e[0m        → Show this command list"
  echo -e "\e[32m• about\e[0m       → About Ahmad Waseem"
  echo -e "\e[33m• skills\e[0m      → Show skills"
  echo -e "\e[34m• projects\e[0m    → Projects & portfolio"
  echo -e "\e[35m• contact\e[0m     → Contact info"
  echo -e "\e[36m• social\e[0m      → Social media links"
  echo -e "\e[91m• systeminfo\e[0m  → Terminal & developer info"
  echo -e "\e[92m• matrix\e[0m      → Hacker matrix animation"
  echo -e "\e[93m• hack\e[0m        → Simulated hacking tool"
  echo -e "\e[94m• scan\e[0m        → Network scan simulation"
  echo -e "\e[95m• website\e[0m     → Open Ahmad's website"
  echo -e "\e[96m• ls\e[0m          → List files in virtual folder"
  echo -e "\e[97m• cat\e[0m         → Read file content"
  echo -e "\e[31m• game\e[0m        → Terminal mini-game"
  echo -e "\e[32m• ai\e[0m          → AI assistant simulation"
  echo -e "\e[33m• monitor\e[0m     → System monitor (fake)"
  echo -e "\e[34m• theme\e[0m       → Switch terminal colors"
  echo -e "\e[35m• clear\e[0m       → Clear screen & show banner"
  echo -e "\e[36m• exit\e[0m        → Exit terminal"
;;

about)
  typewriter "🖤 Ahmad Waseem"
  typewriter "💻 Full Stack Developer | SEO Specialist | Cyber Tools Creator"
  typewriter "🚀 Build High-Performance Websites & Web Apps"
  typewriter "🤖 AI Agentic Systems | Automated Business Tools"
  typewriter "🛡 Innovative Cyber Solutions | Google Ranking Booster"
  typewriter "📈 Boost Clients | Convert Visitors | Solve Real Problems"
  typewriter "🏢 Founder: Ahmatrix Tech"
;;

skills)
  cat_cmd skills.txt
;;

projects)
  cat_cmd projects.txt
;;

contact)
  cat_cmd contact.txt
;;

social)
  echo -e "${cyan}🌐 Social / Portfolio Links:${reset}"
  echo "• Instagram : https://www.instagram.com/ahmii.dll/"
  echo "• TikTok    : https://www.tiktok.com/@ahmii.dll"
  echo "• Discord   : https://discord.gg/KF5sc33m"
  echo "• GitHub    : https://github.com/ahmiidll"
  echo "• X/Twitter : https://x.com/ahmii_dll"
  echo "• Facebook  : https://www.facebook.com/ahmiidll/"
  echo "• Portfolio : https://ahmiiportfolio.netlify.app/"
;;

systeminfo)
  systeminfo
;;

matrix)
  matrix
;;

hack)
  hack
;;

scan)
  scan
;;

website)
  echo "Opening website..."
  if command -v xdg-open > /dev/null; then
    xdg-open https://ahmatrix.netlify.app/
  elif command -v open > /dev/null; then
    open https://ahmatrix.netlify.app/
  elif command -v start > /dev/null; then
    start https://ahmatrix.netlify.app/
  else
    echo "Visit https://ahmatrix.netlify.app/"
  fi
;;

ls)
  ls_cmd
;;

cat)
  cat_cmd $arg
;;

game)
  game
;;

ai)
  ai
;;

monitor)
  echo -e "${cyan}CPU Usage: 15%"
  echo "RAM Usage: 45%"
  echo "Network: 120Mbps"
;;

theme)
  echo "Available themes: red, green, cyan, purple"
  read -p "Enter theme: " t
  case $t in
    red) red="\e[31m";;
    green) green="\e[32m";;
    cyan) cyan="\e[36m";;
    purple) purple="\e[35m";;
    *) echo "Theme not found";;
  esac
;;

clear)
  banner
;;

exit)
  echo -e "${red}Exiting terminal...${reset}"
  exit
;;

*)
  echo -e "${red}Command not found${reset}"
;;

esac
done
