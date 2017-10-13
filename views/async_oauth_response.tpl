% include('header.tpl', title='Asynchronous Configuration')

<h1>Access Granted</h1>
Access has been granted to {{domain}}.
<br/><br/>

<h1>Interesting information (read only):</h1>
<table>
<tr><td>oAuth Response Code from consent:</td><td>{{code}}</td></tr>
<tr><td>JSON from Access Token Fetch</td><td>{{json_response}}</td></tr>
<tr><td>Domain:</td><td>{{domain}}</td></tr>
<tr><td>API Url Root from DNS Provider:</td><td>{{urlAPI}}</td></tr>
<tr><td>Access Token:</td><td>{{access_token}}</td></tr>
</table>
<form method="post" action="/async_confirm">
<h1>Apply template:</h1>
<input name=domain type=hidden value="{{domain}}"/>
<input name=hosts type=hidden value="{{hosts}}"/>
<input name=urlAPI type=hidden value="{{urlAPI}}"/>
<input name=access_token type=hidden value="{{access_token}}"/>
<table>
<tr><td>Domain:</td><td>{{domain}}</td></tr>
<tr><td>Hosts:</td><td>{{hosts}}</td></tr>
<tr><td>Sub Domain:</td><td><input size=50 name=subdomain type=text value=""/></td></tr>
<tr><td>Message:</td><td><input size=50 name=message type=text value=""/></td></tr>
<tr><td>&nbsp;</td><td><input type="submit" value="Apply Template 1"/></td>
<tr><td>&nbsp;</td><td><input type="submit" value="Apply Template 2" name="template2"/></td>
</table>
</form>
%include('footer.tpl')

