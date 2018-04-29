window.addEventListener(
    "load",
    function (s, e) {

        var bodyClassList = document
            .querySelector("body")
            .classList;

        bodyClassList.remove("preload");
        
        setTimeout(
            function () {
                bodyClassList.remove("preload-plus-2s");
            },
            2000);
    });