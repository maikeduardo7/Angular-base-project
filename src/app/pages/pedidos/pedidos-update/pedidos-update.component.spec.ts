import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PedidosUpdateComponent } from './pedidos-update.component';

describe('PedidosUpdateComponent', () => {
  let component: PedidosUpdateComponent;
  let fixture: ComponentFixture<PedidosUpdateComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [PedidosUpdateComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(PedidosUpdateComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
