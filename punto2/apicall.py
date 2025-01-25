import requests

BASE_URL = "https://jsonplaceholder.typicode.com/posts"

def get_post(post_id):
    """Retrieve a post from the API by ID."""
    try:
        response = requests.get(f"{BASE_URL}/{post_id}")
        response.raise_for_status() 
        return response.json()
    except requests.exceptions.RequestException as e:
        print(f"Error fetching post: {e}")
        return None

def create_post(title, body, user_id):
    """Create a new post using the API."""
    payload = {"title": title, "body": body, "userId": user_id}
    headers = {"Content-Type": "application/json"}  

    try:
        response = requests.post(BASE_URL, json=payload, headers=headers)
        response.raise_for_status()
        return response.json()
    except requests.exceptions.RequestException as e:
        print(f"Error creating post: {e}")
        return None
#Example of the endpoints
post = get_post(1)
if post:
    print("Retrieved Post:", post)

new_post = create_post("foo", "bar", 34)
if new_post:
    print("Created Post:", new_post)
