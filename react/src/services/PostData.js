export function PostData(type, userData) {
    let BaseURL = 'http://localhost/rest_api/api/';

    return new Promise((resolve, reject) =>{
    
         
        fetch(BaseURL+type, {
            method: 'POST',
            body: JSON.stringify(userData)
          })
          .then((response) => response.json())
          .then((res) => {
            resolve(res);
          })
          .catch((error) => {
            reject(error);
          });

  
      });
}