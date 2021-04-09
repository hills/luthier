#
# Defining a build action for luthier
#

#
# Fetch the most recent sources
#

fetch()
{
	git clone --depth 1 git://url/to/repo .
}

#
# Output a unique fingerprint to stdout
#
# New builds are only done if the fingerprint changes. It's displayed
# in listings, so being concise or human-readable is useful. If there
# are multiple sources, making a compound fingerprint of all sources
# is useful.
#

fingerprint()
{
	git rev-parse --short --verify HEAD
}

#
# Do the 'build'
#
# Whatever you define the build as. Could be a container or VM,
# compiling, running tests, deployment.
#

build()
{
	make
}

#
# Recipients of build failure notifications; a list of email addresses
# to stdout
#

blame()
{
	git log --pretty=%ce HEAD^   # most recent committer
}
