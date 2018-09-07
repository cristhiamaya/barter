import { Component, OnInit } from '@angular/core';
import { ProductService } from '../services/product.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-product-detail',
  templateUrl: './product-detail.component.html',
  styleUrls: ['./product-detail.component.css']
})
export class ProductDetailComponent implements OnInit {

  product;
  comments;

  constructor(private productService : ProductService,
              private router : Router) {
    this.product = productService.product;
    productService.getComments(this.product.id).subscribe(
      comments => this.comments = comments
    );
  }

  ngOnInit() {}

  next(){
    this.router.navigate([`/checkout`]);
  }

}