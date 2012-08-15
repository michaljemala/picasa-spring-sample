Picasa Web Albums Sample
========================
A sample application demostrating Spring's <a href="http://static.springsource.org/spring-security/site/docs/3.1.x/reference/ns-config.html#ns-openid">OpenID</a> and <a href="https://github.com/SpringSource/spring-security-oauth/wiki/oauth2">OAuth2</a> abstractions. Users sign in by using theirs existing Google Account. The access to the Picasa Web Albums by using its <a href="https://developers.google.com/picasa-web/">Google Data API</a> needs to be allowed when prompted.


Prerequisites
-------------
All applications that access a Google API must be registered through the <a href="https://code.google.com/apis/console#access">APIs Console</a>. The result of this registration process is a set of values that are known to both Google and your application (e.g. client_id, client_secret, JavaScript origins, redirect_uri, etc.). The set of values generated varies based on what type of application you are building. This sample is a web server application therefore you will need to obtain client_id and client_secret. These two tokens will need to be set in <a href="https://github.com/michaljemala/picasa-spring-sample/blob/master/src/main/resources/oauth.properties">oauth.properties</a> file.

See Google's <a href="https://code.google.com/oauthplayground/">OAuth2 Playground</a> for demonstration of the actual authorization flow.