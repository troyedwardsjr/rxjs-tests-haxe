package;

import rx.Observable;
import rx.Observer;
import Lambda;

class Main
{
  public static function main()
  {
    ObservableStatic
    .from(['Adrià', 'Jen', 'Sergi'])
    .subscribe(
      function(x:String):Void {
        trace(x);
      },
      function(err):Void {
        trace(err);
      },
      function():Void {
        trace("Completed");
      }
    );
  }
}

