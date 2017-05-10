package;

import rx.Observable;
import rx.Observer;

class Main
{
  public static function main()
  {
    var src:Observable<Int> = ObservableStatic.range(1, 5);
    var upper = src.reduce(function(acc: Int, val: Int) {
      return acc + val;
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

