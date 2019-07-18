import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

flatpickr(".datepicker", {
  altInput: true,
  dateFormat: "Y-m-d",
  disable: [
      {
          from: "2025-04-01",
          to: "2025-05-01"
      },
      {
          from: "2025-09-01",
          to: "2025-12-01"
      }
  ]
})