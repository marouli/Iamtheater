function showMessage(element_id, msg_type, msg, timeout){
    console.log('Showing slide message')
    let element = document.getElementById(element_id);
    element.children[1].innerHTML = msg;
    element.classList.add(msg_type);
    element.classList.add('show');
    setTimeout(function(){
      element.classList.remove('show');
    }, timeout);
  };