
    
function initMap() {
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 13,
        center: {lat: 47.6062, lng: -122.3321}
    });
    
    var bikeLayer = new google.maps.BicyclingLayer();
    bikeLayer.setMap(map);
}

//ANDY: adds message section
const msgContainer = document.querySelector(".message-container")
const msgTabs = document.querySelector(".messages-tabs")
const msgSection = document.querySelector(".messages-section")
const messages = document.querySelector(".messages")
const form = document.querySelector(".message-form")


document.addEventListener("DOMContentLoaded", (event) => {
    console.log('DOM fully loaded and parsed')

    getMessage()
})


function getMessage(){
    fetch("http://localhost:3000/messages")
    .then(resp => resp.json())
    .then(json => 
        json.forEach(message => renderMessage(message))
        )
}

function renderMessage(message){
    const div = document.createElement("div")
    div.className = "msgCard"
    div.hidden = true
    
    const user_name = document.createElement("li")
    user_name.innerText = message.user_name

    const msg = document.createElement("p")
    msg.innerText = message.content

    const bikeTrail = document.createElement("li")
    bikeTrail.id = message.bike_trail_id
    bikeTrail.innerText = message.bike_trail_id
    bikeTrailListener(bikeTrail, div)
    
    msgSection.appendChild(messages)
    div.append(bikeTrail, user_name, msg)
    messages.appendChild(div)
    msgTabs.append(bikeTrail)
}

function bikeTrailListener(bikeTrail, div) {
    bikeTrail.addEventListener("click", (e) => {
        const cards = document.querySelectorAll(".msgCard")
        cards.forEach(card => card.hidden = true)
        div.hidden = false

        const hiddenInput = document.querySelector(".message-form").childNodes[1]
        const trailInput = document.createElement("input")
        trailInput.type="hidden"
        trailInput.id= `${bikeTrail.id}`
        trailInput.name= `${bikeTrail.id}`
        form.replaceChild(trailInput, hiddenInput)
        addMessage(bikeTrail)
    })
}

function addMessage(bikeTrail){
    const userInput = document.querySelector(".user_name-input")
    const msgInput = document.querySelector(".message-input")
    const postBtn = document.querySelector(".message-button")
    const newUser = document.createElement("li")
    const newMsg = document.createElement("p")
    const newTrail = bikeTrail.id

    postBtn.addEventListener("click", (e) => {
        e.preventDefault()
        newUser.innerText = userInput.value
        userInput.value = ""
        newMsg.innerText = msgInput.value
        msgInput.value = ""
        postMessage(newUser, newMsg, newTrail)
    })
}

function postMessage(newUser, newMsg, newTrail){
    fetch("http://localhost:3000/messages", {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
            Accept: "applicaiton/json "
        },
        body: JSON.stringify({
            "user_name": newUser.innerText,
            "content": newMsg.innerText,
            "bike_trail_id": newTrail
        })
    })
    // .then(resp => resp.json())
    // .then(json => console.log(json))
}