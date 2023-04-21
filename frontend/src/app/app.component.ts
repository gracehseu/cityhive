import { Component, OnInit } from '@angular/core';
import { HttpClient, HttpHeaders, HttpParams } from '@angular/common/http';
import { ɵparseCookieValue } from '@angular/common';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',

  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {
  private cookie;
  public phoneNumber: any;
  public message: any;
  private server;
  constructor(private http: HttpClient) {
    let possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890,./;'[]\=-)(*&^%$#@!~`";
    const lengthOfCode = 40;
    this.cookie = this.makeRandom(lengthOfCode, possible);
    this.server = "localhost:3000"
  } 
  ngOnInit(): void {
    let queryParams = new HttpParams();
    queryParams.append("cookie", this.cookie)
    
    const headers = new HttpHeaders();
    headers.set('Access-Control-Allow-Origin', '*');

    this.http.get(this.server + '/text_messages', { params: queryParams, headers: headers })
      .subscribe(Response => {

        console.log(Response)

      });

  }
  onClickSubmit(message: string, phoneNumber: string) {
    let params = new HttpParams();
    params.append("cookie", this.cookie)
    params.append("phoneNumber", phoneNumber)
    params.append("content", message)
    const headers = new HttpHeaders();

    headers.set('Access-Control-Allow-Origin', '*');

    this.http.post(this.server + "/text_messages", { params: params, headers: headers })
  }

  makeRandom(lengthOfCode: number, possible: string) {
    let text = "";
    for (let i = 0; i < lengthOfCode; i++) {
      text += possible.charAt(Math.floor(Math.random() * possible.length));
    }
    return text;
  }
  
  
}
