import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ClienteUpdateComponent } from './cliente-update.component';

describe('ClienteUpdateComponent', () => {
  let component: ClienteUpdateComponent;
  let fixture: ComponentFixture<ClienteUpdateComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [ClienteUpdateComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ClienteUpdateComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
