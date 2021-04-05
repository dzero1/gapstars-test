import { ComponentFixture, TestBed } from '@angular/core/testing';

import { BoxCapsComponent } from './box-caps.component';

describe('BoxCapsComponent', () => {
  let component: BoxCapsComponent;
  let fixture: ComponentFixture<BoxCapsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ BoxCapsComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(BoxCapsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
