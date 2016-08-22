<div id="lesson-wrapper">
aaa
</div>
<div class="row text-center">
		<div class="col-sm-4 btn btn-success page-down"><i class="fa fa-arrow-left" aria-hidden="true"></i></div>
		<div class="col-sm-4 btn btn-success page-reload"><i class="fa fa-undo" aria-hidden="true"></i></div>
		<div class="col-sm-4 btn btn-success page-up"><i class="fa fa-arrow-right" aria-hidden="true"></i></div>
</div>
<!-- move this script to assets -->

<script>
		$(document).ready(function() {
			var min_page = -100,
			max_page = 1000,
			page = <?= $page ?>;

			$('.page-up').on('click', function() {
					if (max_page == page) {
						return;
					}
					console.log(page);
					$('#lesson-wrapper').load('lesson/navigate?lesson=1&page=' + parseInt(page+1),
						function(responseText, textStatus, req){
							if (textStatus == "error") {
								max_page = page;
								console.log("no more lessons");
								return ;
							}
							page += 1;
						}
				);

			});

			$('.page-reload').on('click', function() {
					console.log(page);
					if (page<1) {
						return;
					}
					$('#lesson-wrapper').load('lesson/navigate?lesson=1&page=' + parseInt(page),
						function(responseText, textStatus, req){
							if (textStatus == "error") {
								console.log("same page");
								return ;
							}
						}
				);

			});

			$('.page-down').on('click', function() {
					console.log(page);
					if (min_page == page) {
						return;
					}
					$('#lesson-wrapper').load('lesson/navigate?lesson=1&page=' + parseInt(page-1),
						function(responseText, textStatus, req){
							if(textStatus == 'error'){
								min_page = page;
								console.log("no more lessons");
								return ;
							}
							page -= 1;
						}
					);

			});

		});
</script>
