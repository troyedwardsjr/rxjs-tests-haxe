// Generated by Haxe 3.4.0
(function () { "use strict";
var Main = function() { };
Main.main = function() {
	var ob = rx_ObservableStatic.fromEvent(window.document,"click");
	ob.filter(function(e,i,ob1) {
		return e.clientX > window.innerWidth / 2;
	}).take(10).subscribe(function(c) {
		console.log(c);
	});
};
var rx_ObservableStatic = require("rxjs").Observable;
var rx_promise_IPromise = function() { };
Main.main();
})();

//# sourceMappingURL=main.js.map