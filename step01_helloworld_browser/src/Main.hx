package;

import rx.Observable;

class Main
{
  public static function main()
  {
    var ob: Observable<js.html.MouseEvent> = ObservableStatic.fromEvent(js.Browser.document, 'click');
    ob.subscribe(
      function(x):Void {
        js.Browser.alert("Clicked");
      },
      function(err):Void {
        js.Browser.alert("Error");
      },
      function():Void {
        js.Browser.alert("Completed");
      }
    );
  }
}

