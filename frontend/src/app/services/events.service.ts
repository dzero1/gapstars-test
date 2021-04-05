import { EventEmitter, Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class EventsService {

  Select:EventEmitter<any> = new EventEmitter();
  Deselect:EventEmitter<any> = new EventEmitter();

  constructor() { }
}
