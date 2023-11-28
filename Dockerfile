FROM dog830228/replica-pg:0.3

COPY *.cpp /replication_checker/*.cpp
COPY *.h /replication_checker/*.h

RUN cd /replication_checker \ 
    cd build \
    cmake .. \
    cmake --build .

# RUN apt-get update
# RUN apt install libssl-dev -y \
#     cmake \ 
#     gcc \
#     g++ \
#     lsb-release
#     git 

# RUN sh -c 'echo "deb https://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
# RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
# RUN apt-get update
# RUN apt-get install postgresql -y

ENTRYPOINT ["/replication_checker/build/replication_checker"]

