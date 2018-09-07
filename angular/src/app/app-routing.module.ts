import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomepageComponent } from './homepage/homepage.component';
import { ProductDetailComponent } from './product-list/product-detail/product-detail.component';
import { ProductCheckoutComponent } from './product-checkout/product-checkout.component';
import { ConfirmationProductComponent } from './notification-dialog/confirmation-product/confirmation-product.component';
import { CanActivateProductGuard } from './product-list/services/auth-guards/can-activate-product-guard.service';
import { NotificationDialogComponent } from './notification-dialog/notification-dialog.component';

const routes: Routes = [
  // { path: '', redirectTo: '/confirmation', pathMatch: 'full' },
  { path: '', component: HomepageComponent },
  { path: 'detail/:id', component: ProductDetailComponent,
    canActivate: [CanActivateProductGuard] },
  { path: 'checkout', component: ProductCheckoutComponent,
    canActivate: [CanActivateProductGuard] 
  },
  { path: 'confirmation', component: ConfirmationProductComponent },
  { path: 'notification', component: NotificationDialogComponent }

];

@NgModule({
  imports: [
    RouterModule.forRoot(routes)
  ],
  exports: [RouterModule],
  providers: []
})
export class AppRoutingModule { }