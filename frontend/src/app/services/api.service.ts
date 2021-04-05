import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class ApiService {

  private API_ROOT = 'http://localhost:8888/';
  private token:String = '';

  constructor(private http:HttpClient) { }

  login(username:String, password:String){
    return new Promise((resolve, reject)=>{

      this.http.request('POST', this.API_ROOT + `users/login`, {body: { "username": username, "password": password } } ).toPromise()
      .then((ret:any) => {
        if (ret.success){
          this.token = ret.data.token;
          resolve(true);
        } else {
          reject(false);
        }
      });

    });
  }

  getAllFilters(){
    console.log("Getting all available filters");
    return new Promise((resolve, reject)=>{

      let _httpHeaders = new HttpHeaders({ "Authorization": "Bearer " + this.token, 'Content-Type':'application/json; charset=utf-8' } );

      this.http.request('GET', this.API_ROOT + `filters`, {headers: _httpHeaders} ).toPromise()
      .then((ret:any) => {
        if (ret){
          resolve(ret);
        } else {
          reject([]);
        }
      });

    });
  }


}
