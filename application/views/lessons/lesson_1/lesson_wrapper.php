<div id="lesson-wrapper">
aaa
</div>
<div class="lesson-navigation row text-center">
		<div class="col-xs-4 ">
			<button class="page-down btn btn-success " type="button" name="button">
				<i class="fa fa-arrow-left" aria-hidden="true"></i>
			</button>
		</div>
		<div class="col-xs-4 ">
			<button class="btn btn-success page-reload" type="button" name="button">
				<i class="fa fa-undo" aria-hidden="true"></i>
			</button>
		</div>
		<div class="col-xs-4 ">
			<button class="btn btn-success page-up" type="button" name="button">
				<i class="fa fa-arrow-right" aria-hidden="true"></i>
			</button>
		</div>
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
