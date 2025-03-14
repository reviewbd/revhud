window.addEventListener('message', function(event) {
    const data = event.data;
    if (data.action === "updateStatus") {
        document.getElementById('health-bar').style.width = Math.min(data.health, 100) + "%";
        document.getElementById('armour-bar').style.width = Math.min(data.armour, 100) + "%";
        document.getElementById('hunger-bar').style.width = Math.min(data.hunger, 100) + "%";
        document.getElementById('thirst-bar').style.width = Math.min(data.thirst, 100) + "%";
    }
});
