import { TestBed, inject } from '@angular/core/testing';

import { CanActivateProductGuard } from './can-activate-product-guard.service';

describe('CanActivateProductGuard', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [CanActivateProductGuard]
    });
  });

  it('should be created', inject([CanActivateProductGuard], (service: CanActivateProductGuard) => {
    expect(service).toBeTruthy();
  }));
});
