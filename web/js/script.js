//first request to server to create order

const paymentStart = () => {
  console.log("payment Started");
  let amount = $("#payment_field").val();
  console.log(amount);
  if(amount=='' || amount==null){
      alert("amount is required!!");
      return;
  }
  
  //now we will use ajax to send request to server to create order-jquery
  
  $.ajax(
          {
              url:'/user/create_order',
              data:JSON.stringify({amount:amount,info:'order_request'}),
              contentType: 'application/json',
              type:'POST',
              dataType:'json',
              success:function(response){
                  //invoked when success
                  console.log(response)
              },
              error:function(error){
                  //invoked when error
                  console.log(Error)
                  alert("Something went wrong..!!")
              }
          })
  
};

