import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-notification-dialog',
  templateUrl: './notification-dialog.component.html',
  styleUrls: ['./notification-dialog.component.css']
})
export class NotificationDialogComponent implements OnInit {

  constructor(private router: Router ) { }
  public notifications = [
    {description:"User #21313 has accepted your offer to trade a bike for a watch", accepted:true},
    {description:"User #21332 has accepted your offer to trade a tv for a bike", accepted:true},
    {description:"User #24102 has declined your offer to trade a hoverboard for a tv", accepted:false},
    {description:"User #21332 has accepted your offer to trade a tv for a bike", accepted:true},
    {description:"User #21332 has accepted your offer to trade a tv for a bike", accepted:true},
    {description:"User #24102 has declined your offer to trade a hoverboard for a tv", accepted:false},

  ]
  ngOnInit() {
  }

  public continue(notification){
    this.router.navigate(['/confirmation']);
    
  }
}
