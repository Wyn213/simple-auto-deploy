if command -v npm &> /dev/null; then
  echo "npm is installed"
else
  echo "npm is not installed. installing..."
  curl -fsSL https://npmjs.org/install.sh | sh
fi  

if command -v vercel &> /dev/null; then
  echo "vercel is installed"
else
  echo "vercel is not installed. installing..."
  npm i -g vercel
fi  
vercel login
echo 'cloning repo...'

git clone https://github.com/Wyn213/shadower
mkdir public
cp shadower/* public

vercel --yes
