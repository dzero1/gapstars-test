import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { EventsService } from 'src/app/services/events.service';

@Component({
  selector: 'app-box-caps',
  templateUrl: './box-caps.component.html',
  styleUrls: ['./box-caps.component.scss']
})
export class BoxCapsComponent implements OnInit {

  @Input() data:Array<any> = [];
  @Input() id:Number = 0;
  @Input() name:String = '';
  @Input() parent:Number = 0;
  @Input() count:Number = 0;
  @Input() selected:Boolean = false;

  _showChildren = false;
  _allSelected = false;

  constructor(private events:EventsService) { }

  ngOnInit(): void {
    
  }
  
  showChildren(){
    this._showChildren = !this._showChildren;
  }
  
  select(myId:Number){
    if (this.selected){
      this.events.Select.emit(this.data.filter((x)=>{ return x.id == myId})[0] );
    } else {
      this.events.Deselect.emit(this.data.filter((x)=>{ return x.id == myId})[0] );
    }
  }

  selectAll(myId:Number){
    this.data.forEach((x)=>{ 
      if (x.parent == this.id){
        if (this._allSelected){
          this.events.Select.emit(x);
        } else {
          this.events.Deselect.emit(x);
        }
      }
    });
  }

  haveChildren(){
    return this.data.filter((x)=>{ return x.parent == this.id }).length > 0;
  }

}
