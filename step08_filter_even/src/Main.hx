package;

import rx.Observable;
import rx.Observer;

class Main
{
  public static function main()
  {
    var src:Observable<Dynamic> = ObservableStatic.range(1, 5);
    var upper = src.filter(function(test:Int, val: Int, observable:Observable<Dynamic>) {
      return val % 2 != 0;
    });

    upper.subscribe(
      function(x:String):Void {
        trace(x);
      },
      function(err):Void {
        trace("Error: " + err);
      },
      function():Void {
        trace("Completed");
      }
    );
  }
}