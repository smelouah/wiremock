FROM wiremock/wiremock:latest

# Créer un nouvel utilisateur
#RUN adduser --disabled-password --gecos '' wiremockuser

# Changer le propriétaire du répertoire de travail WireMock
#RUN chown -R wiremockuser:wiremockuser /home/wiremock

# Passer à l'utilisateur non-root
#USER wiremockuser


COPY mappings /home/wiremock/mappings
COPY files /home/wiremock/__files





