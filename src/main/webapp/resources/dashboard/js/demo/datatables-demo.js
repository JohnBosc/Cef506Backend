// Call the dataTables jQuery plugin
$(document).ready(function() {
  $('#dataTable').DataTable({
    "pageLength": 5
  });
  $('.dataTables_length').addClass('bs-select');
});
