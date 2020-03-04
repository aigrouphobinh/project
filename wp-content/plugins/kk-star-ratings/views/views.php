<div style="display: none;"
    class="kk-star-ratings <?= $valign ? ("kksr-valign-{$valign}") : '' ?> <?= $align ? ("kksr-align-{$align}") : '' ?> <?= $disabled ? 'kksr-disabled' : '' ?>"
    data-id="<?= $id ?>"
    data-slug="<?= $slug ?>">
	<div class="kksr-stars">
	    <div class="kksr-stars-inactive">
		    <?php for ($i = 1; $i <= $best; $i++) : ?>
		        <div class="kksr-star">
		            <div class="kksr-icon" style="width: 13.5px; height: 13.5px;"></div>
		        </div>
		    <?php endfor; ?>
		</div>

	    <div class="kksr-stars-active" style="width: <?= $width ?>px;">
		    <?php for ($i = 1; $i <= $best; $i++) : ?>
		        <div class="kksr-star">
		           <div class="kksr-icon" style="width: 13.5px; height: 13.5px;"></div>
		        </div>
		    <?php endfor; ?>
		</div>

	</div>
</div>
