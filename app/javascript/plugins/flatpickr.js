import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

const element = document.getElementById('unavailable-dates')


if (element) {
  const data = element.dataset.unavailable
  const unvailableDates = JSON.parse(data)
  flatpickr(".datepicker", {
    altInput: true,
    dateFormat: "Y-m-d",
    disable: unvailableDates
  })
}


// const toggleDateInputs = function() {
//   const startDateInput = document.getElementById('booking_start_date');
//   const endDateInput = document.getElementById('booking_end_date');

//   if (startDateInput && endDateInput) {

//     flatpickr(startDateInput, {
//     minDate: 'today',
//     dateFormat: 'd-m-Y',
//     disable: unvailableDates,
//     onChange: function(selectedDates, selectedDate) {
//       if (selectedDate === '') {
//         endDateInput.disabled = true;
//       }
//       let minDate = selectedDates[0];
//       minDate.setDate(minDate.getDate() + 1);
//       endDateCalendar.set('minDate', minDate);
//       endDateInput.disabled = false;
//     }
//   });
//     const endDateCalendar =
//       flatpickr(endDateInput, {
//         dateFormat: 'd-m-Y',
//         disable: unvailableDates,
//         },
//       });
//   }
// };

// export { toggleDateInputs }
