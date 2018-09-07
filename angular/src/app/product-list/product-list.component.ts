import { Component, OnInit,  Input } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Router } from '@angular/router';
import { ProductService } from './services/product.service';
import { NgxGalleryOptions, NgxGalleryImage, NgxGalleryAnimation, NgxGalleryAction } from 'ngx-gallery';

@Component({
  selector: 'app-product-list',
  templateUrl: './product-list.component.html',
  styleUrls: ['./product-list.component.css']
})
export class ProductListComponent implements OnInit {
  
  public items = ["a","b","a","b","a","b","a","b"]
  private products : any;
  galleryOptions: NgxGalleryOptions[];
  galleryImages: NgxGalleryImage[];
  galleryAction: NgxGalleryAction[];
  @Input() typeProduct: String;

  constructor(private http: HttpClient,
              private router : Router,
              private productService: ProductService) {
  }
  
  ngOnInit() {
    this.productService.getAll(this.typeProduct).subscribe(
      products => {
        this.products = products;
        console.log("this.products", this.products);
      }
    );        

   
    this.galleryOptions = [
      {
          width: '100%',
          height: '320px',
          thumbnailsColumns: 4,
          previewFullscreen: true,
          previewAutoPlayInterval:3400,
          imageAutoPlayInterval:3400,
          previewAutoPlay:true,
          previewCloseOnClick: true,
          imageAutoPlay: true,
          imageInfinityMove: true,
          thumbnails: false,
          imageAnimation: NgxGalleryAnimation.Slide
      },
      // max-width 800
      {
        breakpoint: 800,
        width: '100%',
        previewAutoPlayInterval:3400,
        imageAutoPlayInterval:3400,
        previewAutoPlay:true,
        imageAutoPlay: true,
        imageInfinityMove: true,
        previewFullscreen: true,
        previewCloseOnClick: true,
        height: '350px',
        imagePercent: 100,
        thumbnails:false,
      },
      // max-width 400
      {
        breakpoint: 800,
        width: '100%',
        imageAutoPlay: true,
        previewCloseOnClick: true,
        previewFullscreen: true,
        imageInfinityMove: true,
        height: '350px',
        imagePercent: 100,
        thumbnails:false,
      }
    ];
    this.galleryImages = [
        {
          small: 'https://i.imgur.com/OgSL2se.jpg',
          medium: 'https://i.imgur.com/OgSL2se.jpg',
          big: 'https://i.imgur.com/OgSL2se.jpg'
        },
        {
          small: 'https://i.imgur.com/9Mh3nPy.jpg',
          medium: 'https://i.imgur.com/9Mh3nPy.jpg',
          big: 'https://i.imgur.com/9Mh3nPy.jpg',
        },
        {
          small: 'https://i.imgur.com/opXp2SA.jpg',
          medium: 'https://i.imgur.com/opXp2SA.jpg',
          big: 'https://i.imgur.com/opXp2SA.jpg',
        },
        
    ];
    // this.subscriptionProducts = this.http.get(this.urlDB+this.typeProduct+'?_sort=id&_order=desc').subscribe(
    //   products => {
    //     this.products = products;
    //   }
    // );
  }

  goToProductDetail(product){
    console.log("product", product);
    this.productService.product = product;
    this.router.navigate([`/detail/${product.id}`]);
  }

}