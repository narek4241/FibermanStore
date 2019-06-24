<form role='search' id="searchform" method='GET' action="<?php echo home_url('/');?>">
	<div>
		<input type='text' name='s' value='<?php the_search_query(); ?>' id='s' placeholder="Search..">
		<input type='submit' id='searchsubmit' value='Search'>
	</div>
</form>



