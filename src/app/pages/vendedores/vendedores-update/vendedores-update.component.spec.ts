import { ComponentFixture, TestBed } from '@angular/core/testing';

import { VendedoresUpdateComponent } from './vendedores-update.component';

describe('VendedoresUpdateComponent', () => {
  let component: VendedoresUpdateComponent;
  let fixture: ComponentFixture<VendedoresUpdateComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [VendedoresUpdateComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(VendedoresUpdateComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
