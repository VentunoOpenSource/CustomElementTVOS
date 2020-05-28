App.onLaunch = function(options) {
  // 1
  var alert = createAlert("Hello ", "dumbo"); //leaving 2nd parameter with an empty string
  navigationDocument.presentModal(alert);
}

// 2
var createAlert = function(title, description) {
  var alertString = `<?xml version="1.0" encoding="UTF-8" ?>
    <document>
      

      <stackTemplate>
        <banner>
            <title>Available Action Movies</title>
            <copyright bar="foo">  </copyright>
            <button>
              <text>Button</text>
              <copyright bar="foo">  </copyright>
            </button>
        </banner>
        <collectionList>
            <shelf>
                <section>
                    <lockup>
                        <img src="https://images.freeimages.com/images/large-previews/b27/car-wheel-1450362.jpg" width="182" height="274" />
                        <title>Movie 1</title>
                    </lockup>
                    <lockup>
                        <img src="https://images.freeimages.com/images/large-previews/b27/car-wheel-1450362.jpg" width="182" height="274" />
                        <title>Movie 2</title>
                        <copyright bar="foo">  </copyright>
                    </lockup> 
                                 
                </section>
            </shelf>
            <shelf>
                <section>
                    <lockup>
                        <img src="https://images.freeimages.com/images/large-previews/b27/car-wheel-1450362.jpg" width="182" height="274"></img>
                        <title>Movie 4</title>
                    </lockup>                   
                </section>
            </shelf>
        </collectionList>
    </stackTemplate>
    <alertTemplate>
        <title>${title}</title>
        <description>${description}</description>
        
      </alertTemplate>
      
    </document>`
    
var cusString = `<?xml version="1.0" encoding="UTF-8" ?> 
    <document>       
      <copyright/>
    </document>
    `

    var parser = new DOMParser();
    var alertDoc = parser.parseFromString(alertString, "application/xml");
    //var alertDoc = parser.parseFromString(cusString, "application/xml");
    
    return alertDoc
}