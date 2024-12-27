fetch('http://localhost/backend-php/api/user.php')
    .then(response => response.json())
    .then(data => {
        const userList = document.getElementById('user-list');
        data.forEach(user => {
            const userItem = document.createElement('p');
            userItem.textContent = `${user.username}`;
            userList.appendChild(userItem);
        });
    });
