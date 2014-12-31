<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=1024, user-scalable=no">
    <title></title>

    <!-- Required stylesheet -->
    <link rel="stylesheet" type="text/css" href="vendor/deck.js/core/deck.core.css">

    <!-- Extension CSS files go here. Remove or add as needed. -->
    <link rel="stylesheet" media="screen" href="vendor/deck.js/extensions/goto/deck.goto.css">
    <link rel="stylesheet" media="screen" href="vendor/deck.js/extensions/menu/deck.menu.css">
    <link rel="stylesheet" media="screen" href="vendor/deck.js/extensions/navigation/deck.navigation.css">
    <link rel="stylesheet" media="screen" href="vendor/deck.js/extensions/status/deck.status.css">
    <link rel="stylesheet" media="screen" href="vendor/deck.js/extensions/scale/deck.scale.css">

    <!-- Style theme. More available in /themes/style/ or create your own. -->
    <link rel="stylesheet" media="screen" href="vendor/deck.js/themes/style/swiss.css">

    <!-- Transition theme. More available in /themes/transition/ or create your own. -->
    <link rel="stylesheet" media="screen" href="vendor/deck.js/themes/transition/horizontal-slide.css">

    <!-- Basic black and white print styles -->
    <link rel="stylesheet" media="print" href="vendor/deck.js/core/print.css">

    <!-- Required Modernizr file -->
    <script src="vendor/deck.js/modernizr.custom.js"></script>
</head>
<body>
<div class="deck-container">
    <%= document %>

    <!-- End slides. -->

    <!-- Begin extension snippets. Add or remove as needed. -->

    <!-- deck.navigation snippet -->
    <div aria-role="navigation">
      <a href="#" class="deck-prev-link" title="Previous">&#8592;</a>
      <a href="#" class="deck-next-link" title="Next">&#8594;</a>
    </div>

    <!-- deck.status snippet -->
    <p class="deck-status" aria-role="status">
      <span class="deck-status-current"></span>
      /
      <span class="deck-status-total"></span>
    </p>

    <!-- deck.goto snippet -->
    <form action="." method="get" class="goto-form">
      <label for="goto-slide">Go to slide:</label>
      <input type="text" name="slidenum" id="goto-slide" list="goto-datalist">
      <datalist id="goto-datalist"></datalist>
      <input type="submit" value="Go">
    </form>

    <!-- End extension snippets. -->
</div>
<script src="vendor/deck.js/jquery.min.js"></script>
<script src="vendor/deck.js/core/deck.core.js"></script>

<!-- Extension JS files. Add or remove as needed. -->
<script src="vendor/deck.js/extensions/menu/deck.menu.js"></script>
<script src="vendor/deck.js/extensions/goto/deck.goto.js"></script>
<script src="vendor/deck.js/extensions/status/deck.status.js"></script>
<script src="vendor/deck.js/extensions/navigation/deck.navigation.js"></script>
<script src="vendor/deck.js/extensions/scale/deck.scale.js"></script>

<!-- Initialize the deck. You can put this in an external file if desired. -->
<script>
  $(function() {
    $.deck('.slide');
  });
</script>
</body>
</html>