
# edit .env
cp .env.example .env 

# vim docker-compose.yaml # for port mapping to docker host

# set variables
export POSTGRES_PASSWORD=${POSTGRES_PASSWORD:-$(openssl rand -hex 12)}
echo "POSTGRES_PASSWORD=$POSTGRES_PASSWORD"
export POSTGRES_USER=postgres
export POSTGRES_DB=gitdiagram

# vim .env, update NEXT_PUBLIC_API_DEV_URL to correct port

# run docker compose
docker-compose -f docker-compose-full.yml up --build -d

# initialize database （No need initialization database for GitDiagram）