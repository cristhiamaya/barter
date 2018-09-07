import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class ProductService {

  product;

  constructor(private http: HttpClient) {}

  getAll(type: String){
    return this.http.get<any>(`http://localhost:3000/products/getAll/${type}`);
  }

  getComments(productId: number){
    return this.http.get<any>(`http://localhost:3000/comments/getByProductId/${productId}`);
  }

}