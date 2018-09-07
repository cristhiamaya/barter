import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-confirmation-product',
  templateUrl: './confirmation-product.component.html',
  styleUrls: ['./confirmation-product.component.css']
})
export class ConfirmationProductComponent implements OnInit {

  public safe = false;
  public nonsafe = false;

  constructor() { }

  ngOnInit() {
  }

  chooseSafe(){
    this.safe = true;
  }
  chooseNonSafe(){
    this.nonsafe = true;
  }
  back(){
    this.safe = false;
    this.nonsafe = false;
  }
}
