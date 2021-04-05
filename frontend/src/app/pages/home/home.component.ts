import { AfterViewInit, Component, OnInit } from '@angular/core';
import { ApiService } from 'src/app/services/api.service';
import { EventsService } from 'src/app/services/events.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit, AfterViewInit {

  list:Array<any> = [];

  constructor(private api:ApiService, private events:EventsService) { }

  ngOnInit(): void {
  }

  ngAfterViewInit(): void {
    this.api.getAllFilters().then((ret: any)=>{
      if (ret.data && Array.isArray(ret.data)){
        this.list = ret.data;
        this.deselectAll();
      }
    });

    this.events.Select.subscribe((data:any) => {
      const i = this.list.indexOf(data);
      if (i > -1) this.list[i].selected = true;
    });

    this.events.Deselect.subscribe((data:any) => {
      const i = this.list.indexOf(data)
      if (i > -1) this.list[i].selected = false;
    });
  }

  remove(data:any){
    const i = this.list.indexOf(data)
    if (i > -1) this.list[i].selected = false;
  }

  canDeselectAll(){
    return this.list.filter((x)=>{return x.selected}).length > 0;
  }

  deselectAll(){
    this.list.forEach(x => {
      if (x) x.selected = false;
    });
  }

}