# intelehealth-fhir-backend-docker


## pre-requisite

1. sudo-less docker
2. openmrs (https://github.com/Intelehealth/intelehealth-fhir-core-docker.git)

## steps

step-1:

        git clone --depth=1 https://github.com/Intelehealth/intelehealth-fhir-backend-docker.git

step-2:

        cd intelehealth-fhir-backend-docker

step-3:

        docker compose build
step-4:

        docker compose up -d

step-5: to stop instances

        docker compose down
