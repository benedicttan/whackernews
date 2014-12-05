$(document).on('click', '#upvote', function(e) {
  e.preventDefault();
  $(this).css("display","none");
  $(this).next().css("display","none");
  postvote("+",$(this).prev().val());
  current_count = $(this).closest("td").next().text();
  $(this).closest("td").next().text(parseInt(current_count) + 1);
});

$(document).on('click', '#downvote', function(e) {
  e.preventDefault();
  $(this).css("display","none");
  $(this).prev().css("display","none");
  postvote("-",$(this).prev().prev().val());
  current_count = $(this).closest("td").next().next().text();
  $(this).closest("td").next().next().text(parseInt(current_count) + 1);
});

function postvote(value,post_id) {
  var return_data;
  $.ajax({
    type: "POST",
    url: "/vote",
    data: {value: value, post_id: post_id},
    success: function(data) {
    }
  });
}

$(document).on('click', '#cupvote', function(e) {
  e.preventDefault();
  $(this).css("display","none");
  $(this).next().css("display","none");
  commentvote("+",$(this).prev().val());
  current_count = $(this).closest("td").next().text();
  $(this).closest("td").next().text(parseInt(current_count) + 1);
});

$(document).on('click', '#cdownvote', function(e) {
  e.preventDefault();
  $(this).css("display","none");
  $(this).prev().css("display","none");
  commentvote("-",$(this).prev().prev().val());
  current_count = $(this).closest("td").next().next().text();
  $(this).closest("td").next().next().text(parseInt(current_count) + 1);
});

function commentvote(value,comment_id) {
  var return_data;
  $.ajax({
    type: "POST",
    url: "/commentvote",
    data: {value: value, comment_id: comment_id},
    success: function(data) {
    }
  });
}