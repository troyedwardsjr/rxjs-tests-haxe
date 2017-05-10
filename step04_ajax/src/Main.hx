package;

import rx.Observable;
import rx.Observer;
import js.html.XMLHttpRequest;

class Main
{
  public static function main() {
    var get = function(url:String):Observable<String> {
      return ObservableStatic.create(function(observer:rx.Observer<String>) {
        var req:XMLHttpRequest = new XMLHttpRequest();
        req.open('GET', url);
        req.onload = function() {
          if(req.status == 200) {
            observer.next(req.response);
            observer.complete();
          } else {
            observer.error(new js.Error(req.statusText));
          }
        }
        req.onerror = function() {
          observer.error(new js.Error("Unknown Error"));
        };
        req.send();
      });
    }
    var test = get('https://jsonplaceholder.typicode.com/posts/1');
    test.subscribe(
      function(x):Void {
        trace('Result: ${x}');
      },
      function(err):Void {
        trace(err);
      },
      function():Void {
        trace('Completed.');
      }
    );
  }
}

