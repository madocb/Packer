iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
choco install -y python
refreshenv
$env:Path += ";C:\Python36;C:\Python36\Scripts"
python -m pip install --upgrade pip
python -V
pip -V
pip install awscli
aws --version
mkdir s3-local
cd s3-local
aws s3 cp s3://mys3packersrcbucket/ ./ --recursive
echo "#####################################"
dir
