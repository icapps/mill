import R from 'ramda';

// curry is of my favorites, let's taste some
const apiCall = R.curry(async function (url, method, body) {
  let json = JSON.stringify(body);
  const request = {
    body: json,
    credentials: 'same-origin',
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    },
    method,
  };
  const response = await fetch(url, request)
  return response.json();
}));

// specify my curry with a url
const moviesApi = apiCall('/movies');

// add a method to the curry
const createMovie = moviesApi('post');
const updateMovie = moviesApi('put');

// taste the curry by adding some body
createMovie({ title: 'The Matrix' })
  .then(res => ...);

updateMovie({ title: 'The Matrix', id: 1, rating: 5 })
  .then(res => ...);

