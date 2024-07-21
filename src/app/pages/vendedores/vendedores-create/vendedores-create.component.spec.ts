import { ComponentFixture, TestBed } from '@angular/core/testing';

import { VendedoresCreateComponent } from './vendedores-create.component';

describe('VendedoresCreateComponent', () => {
  let component: VendedoresCreateComponent;
  let fixture: ComponentFixture<VendedoresCreateComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [VendedoresCreateComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(VendedoresCreateComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
