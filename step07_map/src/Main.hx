package;

import rx.Observable;
import rx.Observer;

class Main
{
  public static function main()
  {
    var src:Observable<Dynamic> = ObservableStatic.range(1, 5);
    var upper = src.map(function(val: Int, i: Int) {
      return val * 2;
    });
    
    upper.subscribe(
      function(x:String):Void {
        //trace(x);
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

