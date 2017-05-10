package;

import rx.Observable;

class Main
{
  public static function main()
  {
    var ob: Observable<String> = ObservableStatic.of(['Hello']);
    ob.subscribe(function(event) {
      trace(event);
    });
  }
}

