export PATH=$PATH:$HOME/install/google-cloud-sdk/bin/

if [ -d ~/install/google-cloud-sdk ] ; then
  source '~/install/google-cloud-sdk/path.bash.inc'
  source '~/install/google-cloud-sdk/completion.bash.inc'
fi

alias gcls='gcloud compute instances list'

function gcssh {
  gcloud compute ssh mathias_ruediger@$1
}
