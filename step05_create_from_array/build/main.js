// Generated by Haxe 3.4.0
(function () { "use strict";
var HxOverrides = function() { };
HxOverrides.iter = function(a) {
	return { cur : 0, arr : a, hasNext : function() {
		return this.cur < this.arr.length;
	}, next : function() {
		return this.arr[this.cur++];
	}};
};
var Main = function() { };
Main.main = function() {
	rx_ObservableStatic.from(["Adrià","Jen","Sergi"]).subscribe(function(x) {
		console.log(x);
	},function(err) {
		console.log(err);
	},function() {
		console.log("Completed");
	});
};
var rx_ObservableStatic = require("rxjs").Observable;
var rx_promise_IPromise = function() { };
Main.main();
})();

//# sourceMappingURL=main.js.map