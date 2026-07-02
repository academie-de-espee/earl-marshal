#!/usr/bin/env bash
#
# Build the Jekyll site inside the jekyll/jekyll container.
#
# The image tag is pinned for reproducible builds. jekyll/jekyll:4.4 ships
# Ruby 3.4 and Jekyll 4.4.x, matching the version constraint in the Gemfile.
#
# `bundle install` installs the exact gems from Gemfile.lock into the container
# so the build does not depend on whichever gems happen to be preinstalled.
set -euo pipefail

IMAGE="jekyll/jekyll:4.4"

docker run --rm -v "${PWD}:/srv/jekyll" "${IMAGE}" bash -c "
  chmod 777 /srv/jekyll
  git config --global --add safe.directory /srv/jekyll
  cd /srv/jekyll
  bundle install
  bundle exec jekyll build
"
