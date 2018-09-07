import { Component } from '@angular/core';
import { Router, NavigationEnd } from '@angular/router';
import { ObservableMedia } from '@angular/flex-layout';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {

  title = 'app';
  currentURL : string = "";
  openSidenav: boolean;

  public search = false;

  constructor(
    // private globalService: GlobalService,
    private router: Router,
    private media: ObservableMedia) {                

    router.events.subscribe((val) => {
      if(val instanceof NavigationEnd){
        this.currentURL = val.url;
      }
    });
  }

  toggleSidenav(){
    this.openSidenav = !this.openSidenav;
  }

  changeSearch(){
    this.search = !this.search;
  }

}