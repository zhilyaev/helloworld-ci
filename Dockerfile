FROM node:alpine

WORKDIR /code
COPY package.json /code
COPY yarn.lock /code
COPY . /code

# Environment
ARG BASE_URL
ENV BASE_URL=$BASE_URL

# Install dependencies
RUN yarn install
# Ready to prod state
RUN yarn generate
# Ready to stage state
RUN yarn build

# ENTRYPOINT ["/code/entrypoint.sh"]
EXPOSE 3000