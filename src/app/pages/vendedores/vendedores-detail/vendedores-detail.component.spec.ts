import { ComponentFixture, TestBed } from '@angular/core/testing';

import { VendedoresDetailComponent } from './vendedores-detail.component';

describe('VendedoresDetailComponent', () => {
  let component: VendedoresDetailComponent;
  let fixture: ComponentFixture<VendedoresDetailComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [VendedoresDetailComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(VendedoresDetailComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
