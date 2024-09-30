# Your Solution
#
# Publishes a Docker image.
#
# Environment variables:
#
#   CONTAINER_REGISTRY - The hostname of your container registry.
#   REGISTRY_UN - User name for your container registry.
#   REGISTRY_PW - Password for your container registry.
#   VERSION - The version number to tag the images with.
#
# Usage:
#
#       ./scripts/push-image.sh
#

set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"
: "$REGISTRY_UN"
: "$REGISTRY_PW"

# Log in to the container registry
echo $REGISTRY_PW | docker login $CONTAINER_REGISTRY --username $REGISTRY_UN --password-stdin

# Tag the images
docker tag satorugojo-sit722-part5-book_catalog $CONTAINER_REGISTRY/book_catalog
docker tag satorugojo-sit722-part5-inventory_management $CONTAINER_REGISTRY/inventory_management

# Push images for both microservices
docker push $CONTAINER_REGISTRY/book_catalog
docker push $CONTAINER_REGISTRY/inventory_management