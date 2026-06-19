(function () {
	function initOverlay() {
		var overlay = document.getElementById('image-overlay');
		if (!overlay) {
			return;
		}

		var overlayContent = overlay.querySelector('.image-overlay-content');
		var isOpen = false;

		function closeOverlay() {
			overlay.classList.remove('is-open');
			overlay.setAttribute('aria-hidden', 'true');
			overlayContent.innerHTML = '';
			isOpen = false;
			document.body.style.overflow = '';
		}

		function openOverlay(source) {
			overlayContent.innerHTML = '';

			if (source.tagName === 'IMG') {
				var img = document.createElement('img');
				img.src = source.currentSrc || source.src;
				img.alt = source.alt;
				overlayContent.appendChild(img);
			} else {
				var placeholder = document.createElement('div');
				placeholder.className = 'no-image';
				placeholder.textContent = source.textContent.trim() || 'no image';
				overlayContent.appendChild(placeholder);
			}

			overlay.classList.add('is-open');
			overlay.setAttribute('aria-hidden', 'false');
			isOpen = true;
			document.body.style.overflow = 'hidden';
		}

		document.addEventListener('click', function (event) {
			var target = event.target;

			if (target.closest('.Image') && target.matches('img, .no-image')) {
				event.preventDefault();
				event.stopPropagation();
				if (isOpen) {
					closeOverlay();
				} else {
					openOverlay(target);
				}
				return;
			}

			if (isOpen && target.closest('#image-overlay')) {
				closeOverlay();
			}
		});
	}

	if (document.readyState === 'loading') {
		document.addEventListener('DOMContentLoaded', initOverlay);
	} else {
		initOverlay();
	}
})();