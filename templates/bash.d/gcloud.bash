if [ -d ~/install/google-cloud-sdk ] ; then
    source ~/install/google-cloud-sdk/path.bash.inc
    source ~/install/google-cloud-sdk/completion.bash.inc
fi

alias gcls='gcloud compute instances list'

alias k=kubectl

function gcssh {
  gcloud compute ssh mathias_ruediger@$1
}

function gcenv {
  gcloud config set project $1
  gcloud container clusters get-credentials fromatob --zone europe-west1-b
  gcloud compute config-ssh
  kubectl config set-context `kubectl config current-context` --namespace=default
}
