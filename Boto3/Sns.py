import boto3

# Send your sms message.
client = boto3.client("sns")
response = client.publish(
    PhoneNumber="+919448089777",
    Message="Hello World!"
)
print(response)