const initCalculateBookingPrice = () => {

  const rangeStartElement = document.getElementById('range_start');

  if (rangeStartElement) {

    rangeStartElement.addEventListener("change", () => {

      const price = parseInt(document.getElementById('price').innerText);

      const dates = rangeStartElement.value.split(' to ');

      const totalPrice = (Date.parse(dates[1]) - Date.parse(dates[0])) / 86400000 * price;

      let sumPrice = document.getElementById('total-price');

      sumPrice.innerText = totalPrice;
    }
  )};
};

export { initCalculateBookingPrice };
