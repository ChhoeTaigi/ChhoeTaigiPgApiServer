'use strict';

const config = {
    IS_ENV_PRODUCTION: process.env.NODE_ENV == 'production',

    HOST: '139.59.232.39',
    HOST_LOCAL: '127.0.0.1',

    PG_DEFAULT_DATABASE: 'dicts20210420',
    PG_USER: 'postgres',
    PG_PSWD: '12345678'
};

export default config;
