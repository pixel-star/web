<%@page contentType="text/html" pageEncoding="UTF-8"%>
        </div>
	<script>
		$('.js-pscroll').each(function(){
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function(){
				ps.update();
			})
		});
			
		
	</script>

    </body>
</html>