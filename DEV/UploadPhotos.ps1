# Eg. User name="admin", Password="admin" for this code sample.
$user = "admin"
$pass = "admin"

# Build auth header
$base64AuthInfo = [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes(("{0}:{1}" -f $user, $pass)))

# Set proper headers
$headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
$headers.Add('Authorization',('Basic {0}' -f $base64AuthInfo))
$headers.Add('Accept','application/json')


# Specify endpoint uri
$uri = "https://mitownsvilledev.service-now.com/api/now/attachment/file?table_name=ZZ_YYLiveProfile&table_sys_id=02934rui20f940&file_name=image"

# Specify HTTP method
$method = "post"




# Send HTTP request
$response = Invoke-RestMethod -Headers $headers -Method $method -Uri $uri 

# Print response
$response.RawContent