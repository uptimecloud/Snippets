# Eg. User name="admin", Password="admin" for this code sample.
$user = "admin"
$pass = "Lawson73"

# Build auth header
$base64AuthInfo = [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes(("{0}:{1}" -f $user, $pass)))

# Set proper headers
$headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
$headers.Add('Authorization',('Basic {0}' -f $base64AuthInfo))
$headers.Add('Accept','application/json')


# Specify endpoint uri
$uri = "https://dev71505.service-now.com/api/now/attachment/ada81ccec312120048f4d5dc64d3aebb"

# Specify HTTP method
$method = "delete"




# Send HTTP request
$response = Invoke-RestMethod -Headers $headers -Method $method -Uri $uri 

# Print response
$response.RawContent

