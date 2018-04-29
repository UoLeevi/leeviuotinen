window.addEventListener(
    "load",
    function (s, e) {
        setTimeout(
            function () {
                document
                    .querySelector("body")
                    .classList
                    .remove("preload-plus-2s");
            },
            2000);
    });