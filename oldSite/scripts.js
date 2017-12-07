function getRandomColor() {
            var letters='0123456789ABCDEF'.split('');
            var color='#';
            for (var i=0; i<6; i++) {
                color +=letters[Math.round(Math.random()*15)]
            }
            return color;
        }
        
        var clickedTime; var createdTime; var reactionTime;
        
        function makeBox() {
            
            createdTime=Date.now();
            
            var time=Math.random();
        
            time=time*2000;
        
            setTimeout(function() {
                
                if (Math.random()>0.5) {
                    document.getElementById("aquabox").style.borderRadius="100px";
                } else {
                    document.getElementById("aquabox").style.borderRadius="0";
                }
            
                var top=Math.random();
                
                top=top*300;
                
                var left=Math.random();
                
                left=left*700;
                
                
                document.getElementById("aquabox").style.top=top+"px";
                
                document.getElementById("aquabox").style.left=left+"px";
                        document.getElementById("aquabox").style.backgroundColor=getRandomColor();
              
                document.getElementById("aquabox").style.display="block";  
                
                createdTime=Date.now();
                   
            }, time);
        
        }
        
        document.getElementById("aquabox").onclick=function() {
            
            clickedTime=Date.now();
            
            reactionTime=(clickedTime-createdTime)/1000;
            
            document.getElementById("time").innerHTML=reactionTime;
            
            this.style.display="none"; 
            
            makeBox();
                
        }
        
        makeBox();