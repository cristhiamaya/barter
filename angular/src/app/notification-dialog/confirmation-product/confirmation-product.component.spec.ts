import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ConfirmationProductComponent } from './confirmation-product.component';

describe('ConfirmationProductComponent', () => {
  let component: ConfirmationProductComponent;
  let fixture: ComponentFixture<ConfirmationProductComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ConfirmationProductComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ConfirmationProductComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
