import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppComponent } from './app.component';
import { MatButtonModule, MatCheckboxModule, MatSidenavModule, MatToolbarModule, MatIconModule, MatCardModule,
  MatTableModule, MatFormFieldModule, MatPaginatorModule, MatSortModule, MatInputModule, MatDialogModule,
  MatGridListModule, MatTabsModule, MatSelectModule, MatDatepickerModule, MatSlideToggleModule,
  MatChipsModule, MatTooltipModule, MatExpansionModule, MatButtonToggleModule, MatSnackBarModule, MatListModule
} from '@angular/material';
import { MatProgressSpinnerModule } from '@angular/material/progress-spinner';
import { MatAutocompleteModule } from '@angular/material/autocomplete';
import { HttpClientModule } from '@angular/common/http';
import { HttpModule } from '@angular/http';
import { HomepageComponent } from './homepage/homepage.component';
import { FlexLayoutModule } from '@angular/flex-layout';
import { SearchBarComponent } from './search-bar/search-bar.component';
import { ProductListComponent } from './product-list/product-list.component';
import { ProductCheckoutComponent } from './product-checkout/product-checkout.component';
import { ConfirmationProductComponent } from './notification-dialog/confirmation-product/confirmation-product.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { AppRoutingModule } from './app-routing.module';
import { ProductDetailComponent } from './product-list/product-detail/product-detail.component';
import { StarRatingModule } from 'angular-star-rating';
import { MatStepperModule } from '@angular/material/stepper';
import { NotificationDialogComponent } from './notification-dialog/notification-dialog.component';
import {MatBadgeModule} from '@angular/material/badge';
import { NgxGalleryModule } from 'ngx-gallery';

@NgModule({
  declarations: [
    AppComponent,
    HomepageComponent,
    SearchBarComponent,
    ProductListComponent,
    ProductDetailComponent,
    ProductCheckoutComponent,
    ConfirmationProductComponent,
    NotificationDialogComponent
  ],
  imports: [
    MatStepperModule,
    AppRoutingModule,
    MatBadgeModule,
    BrowserModule,
    MatButtonModule,
    FlexLayoutModule,
    MatProgressSpinnerModule,
    MatCheckboxModule,
    HttpClientModule,
    HttpModule,
    MatListModule,
    MatIconModule,
    MatSidenavModule,
    MatToolbarModule,
    MatIconModule,
    MatCardModule,
    MatTableModule,
    MatFormFieldModule,
    MatSortModule,
    MatInputModule,
    MatDialogModule,
    MatGridListModule,
    NgxGalleryModule,
    MatPaginatorModule,
    MatTabsModule,
    MatSelectModule,
    MatDatepickerModule,
    MatAutocompleteModule,
    MatSlideToggleModule,
    MatTooltipModule,
    MatChipsModule,
    MatExpansionModule,
    MatButtonToggleModule,
    BrowserAnimationsModule,
    MatSnackBarModule,
    MatSidenavModule,
    StarRatingModule.forRoot()
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
