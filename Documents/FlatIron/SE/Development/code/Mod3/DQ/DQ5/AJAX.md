console.log("Hello")
 
fetch('https://randomuser.me/api/')
  .then( res => res.json() )
  .then( data => {
    console.log("Hi") 
  })
 
console.log("Sup?")

-> Hello, Sup?, Hi, in that order.




function fetchData(){
        let data = fetch('https://randomuser.me/api/')
          .then( res => res.json() )
          .then( res => res )
          console.log(data)  
}
 
fetchData()

-> returns a promise of a json object (please turn me into a workable object). (dont forget about .message).


function fetchData(){
        let data = fetch('https://randomuser.me/api/')
          .then( res => res.json() )
          .then( beef => console.log(beef) )
}
 
fetchData()

-> returns JSON object (I am a workable JSON object).


function fetchData(){
        let data = fetch('https://randomuser.me/api/')
          .then( res => res.json() )
          .then( console.log )
}
 
fetchData()



In your own words: what does asynchronous mean?

Is something that works out of order, it happens when other stuff is happening, it does small stuff while other stuff is going on, its gonna load stuff while the other stuff is going on.



Write out the request and response cycle. What is its purpose? How does it work?

No. It is asking that we send a header response to the server and it comes back with a header and a body.



Check out the JSON you get from making a GET request to this url (https://randomuser.me/api/).

Open up the Github repository for this reading and view the provided src/index.html file in the browser. In src/index.js, make an AJAX request to that url when the button is clicked and append the retrieved information to the DOM. Use the labels to append the right data in the appropriate h4's, h3's and img tags.
















