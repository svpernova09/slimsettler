# SlimSettler

The scripts that build the Slimstead development environment. 

End result can be found at https://app.vagrantup.com/Svpernova09/boxes/slimstead

## Usage

You probably don't want this repo, follow instructions at https://laravel.com/docs/homestead instead.

If you know what you are doing:

* Clone [chef/bento](https://github.com/chef/bento) into same top level folder as this repo.
* Run `./bin/link-to-bento.sh`
* Run `cd ../bento` and work there for the remainder.
* Follow normal [Packer](https://www.packer.io/) practice of building `ubuntu/ubuntu-18.04-amd64.json`
