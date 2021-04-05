import { Component, Input, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { ApiService } from 'src/app/services/api.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent implements OnInit {

  @Input() username:String = 'admin';
  @Input() password:String = 'admin123';

  constructor(private api:ApiService, private router: Router, private route: ActivatedRoute) { }

  ngOnInit(): void {
  }

  onLogin(){
    this.api.login(this.username, this.password).then( (ret) =>{
      this.router.navigate(['home'], { relativeTo: this.route, skipLocationChange: true })
    });
  }

}
