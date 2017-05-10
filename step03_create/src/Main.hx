package;

import rx.Observable;
import rx.Observer;

class Main
{
  public static function main()
  {
    var ob:Observable<String> = ObservableStatic.create(function(observer:rx.Observer<String>) {
      observer.next('Simon');
      observer.next('Jen');
      observer.next('Sergi');
      observer.complete();
    });
    ob.subscribe(
      function(x:String):Void {
        js.Browser.alert(x);
      },
      function(err):Void {
        js.Browser.alert("Error: " + err);
      },
      function():Void {
        js.Browser.alert("Completed");
      }
    );
  }
}

