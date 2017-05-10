package;

import rx.Observable;

class Main
{
  public static function main()
  {
    var ob: Observable<js.html.MouseEvent> = ObservableStatic.fromEvent(js.Browser.document, 'click');
    ob.filter(function(e: js.html.MouseEvent, i:Int, ob:Observable<js.html.MouseEvent>):Bool {
      return e.clientX > js.Browser.window.innerWidth / 2;
    })
    .take(10) // Limit
    .subscribe(function(c:js.html.MouseEvent) {
      trace(c);
    });
  }
}

