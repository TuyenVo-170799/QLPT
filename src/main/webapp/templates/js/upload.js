$(document)
	.ready(
		function() {
			if (window.File && window.FileList
				&& window.FileReader) {
				$("#thumbnail")
					.on(
						"change",
						function(e) {
							var files = e.target.files, filesLength = files.length;
							for (var i = 0; i < filesLength; i++) {
								var f = files[i]
								var fileReader = new FileReader();
								fileReader.onload = (function(
									e) {
									var file = e.target;
									$(
										"<span class=\"pip\">"
										+ "<img class=\"imageThumb\" src=\"" + e.target.result + "\" title=\"" + file.name + "\"/>"
										+ "<br/><span class=\"remove\">Remove image</span>"
										+ "</span>")
										.insertAfter(
											"#thumbnail");
									$(".remove")
										.click(
											function() {
												$(
													this)
													.parent(
														".pip")
													.remove();
												$("#thumbnail").val("");
											});
								});
								fileReader
									.readAsDataURL(f);
							}
						});
				$("#photo1")
					.on(
						"change",
						function(e) {
							var files = e.target.files, filesLength = files.length;
							for (var i = 0; i < filesLength; i++) {
								var f = files[i]
								var fileReader = new FileReader();
								fileReader.onload = (function(
									e) {
									var file = e.target;
									$(
										"<span class=\"pip\">"
										+ "<img class=\"imageThumb\" src=\"" + e.target.result + "\" title=\"" + file.name + "\"/>"
										+ "<br/><span class=\"remove\">Remove image</span>"
										+ "</span>")
										.insertAfter(
											"#photo1");
									$(".remove")
										.click(
											function() {
												$(
													this)
													.parent(
														".pip")
													.remove();
												$("#photo1").val("");
											});
								});
								fileReader
									.readAsDataURL(f);
							}
						});
				$("#photo2")
					.on(
						"change",
						function(e) {
							var files = e.target.files, filesLength = files.length;
							for (var i = 0; i < filesLength; i++) {
								var f = files[i]
								var fileReader = new FileReader();
								fileReader.onload = (function(
									e) {
									var file = e.target;
									$(
										"<span class=\"pip\">"
										+ "<img class=\"imageThumb\" src=\"" + e.target.result + "\" title=\"" + file.name + "\"/>"
										+ "<br/><span class=\"remove\">Remove image</span>"
										+ "</span>")
										.insertAfter(
											"#photo2");
									$(".remove")
										.click(
											function() {
												$(
													this)
													.parent(
														".pip")
													.remove();
												$("#photo2").val("");
											});
								});
								fileReader
									.readAsDataURL(f);
							}
						});
					$("#photo3")
					.on(
						"change",
						function(e) {
							var files = e.target.files, filesLength = files.length;
							for (var i = 0; i < filesLength; i++) {
								var f = files[i]
								var fileReader = new FileReader();
								fileReader.onload = (function(
									e) {
									var file = e.target;
									$(
										"<span class=\"pip\">"
										+ "<img class=\"imageThumb\" src=\"" + e.target.result + "\" title=\"" + file.name + "\"/>"
										+ "<br/><span class=\"remove\">Remove image</span>"
										+ "</span>")
										.insertAfter(
											"#photo3");
									$(".remove")
										.click(
											function() {
												$(
													this)
													.parent(
														".pip")
													.remove();
												$("#photo2").val("");
											});
								});
								fileReader
									.readAsDataURL(f);
							}
						});
						$("#photo4")
					.on(
						"change",
						function(e) {
							var files = e.target.files, filesLength = files.length;
							for (var i = 0; i < filesLength; i++) {
								var f = files[i]
								var fileReader = new FileReader();
								fileReader.onload = (function(
									e) {
									var file = e.target;
									$(
										"<span class=\"pip\">"
										+ "<img class=\"imageThumb\" src=\"" + e.target.result + "\" title=\"" + file.name + "\"/>"
										+ "<br/><span class=\"remove\">Remove image</span>"
										+ "</span>")
										.insertAfter(
											"#photo4");
									$(".remove")
										.click(
											function() {
												$(
													this)
													.parent(
														".pip")
													.remove();
												$("#photo2").val("");
											});
								});
								fileReader
									.readAsDataURL(f);
							}
						});
					$("#photo5")
					.on(
						"change",
						function(e) {
							var files = e.target.files, filesLength = files.length;
							for (var i = 0; i < filesLength; i++) {
								var f = files[i]
								var fileReader = new FileReader();
								fileReader.onload = (function(
									e) {
									var file = e.target;
									$(
										"<span class=\"pip\">"
										+ "<img class=\"imageThumb\" src=\"" + e.target.result + "\" title=\"" + file.name + "\"/>"
										+ "<br/><span class=\"remove\">Remove image</span>"
										+ "</span>")
										.insertAfter(
											"#photo5");
									$(".remove")
										.click(
											function() {
												$(
													this)
													.parent(
														".pip")
													.remove();
												$("#photo2").val("");
											});
								});
								fileReader
									.readAsDataURL(f);
							}
						});
			} else {
				alert("Your browser doesn't support to File API")
			}
		});