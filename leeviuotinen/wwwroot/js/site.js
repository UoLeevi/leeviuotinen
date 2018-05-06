(function () {
    var bodyClassList = document
        .querySelector("body")
        .classList;

    window.addEventListener(
        "load",
        function (s, e) {
            bodyClassList.remove("preload");
        });

})();