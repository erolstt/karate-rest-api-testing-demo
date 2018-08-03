function karateconf() {
    karate.configure('connectTimeout', 5000);
    karate.configure('readTimeout', 5000);
    var config = { baseURL: null, grantType: null, clientId: null, clientSecret: null, audience: null, authURL: null };
    if (karate.properties['base.URL'] === null) {
        config.baseURL = 'http://localhost:8080';
    }
    else {
        config.baseURL = karate.properties['base.URL'];
        config.grantType = karate.properties['grant.type'];
        config.clientId = karate.properties['client.id'];
        config.clientSecret = karate.properties['client.secret'];
        config.audience = karate.properties['audience'];
        config.authURL = karate.properties['auth.URL'];
        // setting a variable called 'authInfo' which can be used in the feature files to set Authorization in headers
        var auth = karate.callSingle('classpath:controller/auth.feature', config);
        config.authInfo = { tokenType: auth.tokenType, accessToken: auth.accessToken };
    }
    return config;
}
