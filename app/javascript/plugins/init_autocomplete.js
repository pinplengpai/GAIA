import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('address_field');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
