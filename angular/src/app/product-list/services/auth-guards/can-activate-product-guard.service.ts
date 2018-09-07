import { Injectable } from '@angular/core';
import { CanActivate, ActivatedRouteSnapshot, RouterStateSnapshot, Router } from '@angular/router';
import { Observable } from 'rxjs';
import { ProductService } from '../product.service';

@Injectable({
  providedIn: 'root'
})
export class CanActivateProductGuard implements CanActivate{

  constructor(private router: Router,
              private productService: ProductService) { }

  canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): boolean | Observable<boolean> | Promise<boolean> {

    if(this.productService.product){
      return true;
    }
    else{
      this.router.navigate(['/']);
      return false;
    }

    // if(this.productService.product){
    //   return true;
    // }
    // else{

    //   this.productService.product = {
    //     "owner": "John Doe",
    //     "description": "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab, distinctio? Consequatur consectetur deserunt fugit laudantium minus optio excepturi laborum aut, molestias numquam quisquam exercitationem aliquam repellendus, unde doloribus autem quod?",
    //     "imageURL": "https://ii.worldmarket.com/fcgi-bin/iipsrv.fcgi?FIF=/images/worldmarket/source/29365_XXX_v1.tif&wid=650&cvt=jpeg",
    //     "name": "A service chair",
    //     "rating": 4.5,
    //     "state": "used",
    //     "peopleInterested": 8,
    //     "favourite": false,
    //     "comments": [
    //       { 
    //         "name": "Adipisci neque veritatis fugit",
    //         "description": "Lorem ipsum dolor sit amet, consectetur adipisicing elit."
    //       },
    //       {
    //         "name": "facilis doloremque aliquid earum?",
    //         "description": "Magni praesentium, eos numquam eveniet recusandae nemo quaerat."
    //       },
    //       {
    //         "name": "officia ullam?",
    //         "description": "Minima dicta quia incidunt, cupiditate, praesentium itaque reprehenderit consequatur tempora beatae modi impedit natus."
    //       },
          
    //     ]
    //   }

    //   return true;
    // }
    // else {
    //   this.router.navigate(['/']);
    // }
  }

}
