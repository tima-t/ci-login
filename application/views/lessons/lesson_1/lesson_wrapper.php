<div id="lesson-wrapper">
aaa
</div>
<div class="row text-center">
		<div class="col-sm-4 btn btn-success page-down"><i class="fa fa-arrow-left" aria-hidden="true"></i></div>
		<div class="col-sm-4 btn btn-success page-reload; ?>"><i class="fa fa-undo" aria-hidden="true"></i></div>
		<div class="col-sm-4 btn btn-success page-up"><i class="fa fa-arrow-right" aria-hidden="true"></i></div>
</div>
<!-- move this script to assets -->

<script>
		$(document).ready(function() {
			var page = <?php echo $page; ?>;

			// $('#lesson-wrapper').load('lesson?lesson=1&page=2');
			$('.page-up').on('click', function() {
					$('#lesson-wrapper').load('lesson?lesson=1&page=' + parseInt(page+1));
					page += 1;
			});

			$('.page-down').on('click', function() {
					var backToFirst = false;
					if (page - 1 == 1) {
						 var backToFirst = true;
					}
					$('#lesson-wrapper').load('lesson?lesson=1&page=' + parseInt(page-1) + '&backToFirst=' + backToFirst);
					page -= 1;
			});

			$('.page-down').on('click', function() {
					$('#lesson-wrapper').load('lesson?lesson=1&page=' + parseInt(page));
			});
		});
</script>
