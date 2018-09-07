import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-homepage',
  templateUrl: './homepage.component.html',
  styleUrls: ['./homepage.component.css']
})
export class HomepageComponent implements OnInit {

  constructor() { }
  public tabs=[{label: 'Latest', type: 'latest'},
    {label: 'Books', type: 'books'},
    {label: 'Clothing', type: 'clothing'},
    {label: 'Collectibles', type: 'collectibles'},
    {label: 'Computing', type: 'computing'},
    // {label: 'Services', type: 'services'},
  ];
  
  ngOnInit() {}

}
