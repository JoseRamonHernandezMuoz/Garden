var a=(document).ready(function(){
    var zindex = 10;
    
    a("div.card").click(function(e){
      e.preventDefault();
  
      var isShowing = false;
  
      if (a(this).hasClass("show")) {
        isShowing = true
      }
  
      if (a("div.cards").hasClass("showing")) {
        // a card is already in view
        a("div.card.show")
          .removeClass("show");
  
        if (isShowing) {
          // this card was showing - reset the grid
          a("div.cards")
            .removeClass("showing");
        } else {
          // this card isn't showing - get in with it
          a(this)
            .css({zIndex: zindex})
            .addClass("show");
  
        }
  
        zindex++;
  
      } else {
        // no cards in view
        a("div.cards")
          .addClass("showing");
        a(this)
          .css({zIndex:zindex})
          .addClass("show");
  
        zindex++;
      }
      
    });
  });