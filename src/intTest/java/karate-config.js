function karateconf() {
    karate.configure('connectTimeout', 5000);
    karate.configure('readTimeout', 5000);
    var config = { baseURL: null};
    if (karate.properties['base.URL'] === null) {
        config.baseURL = 'http://localhost:3000';
    }
    else {
        config.baseURL = karate.properties['base.URL'];
    }
    return config;
}