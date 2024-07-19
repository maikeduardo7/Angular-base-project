# Execute o arquivo da seguinte maneira: 
# 1 - chmod +x setup-structure.sh
# 2 - ./setup-structure.sh

#!/bin/bash

# Criar a pasta core e suas subpastas
ng generate module core --module app
mkdir -p src/app/core/services src/app/core/interceptors src/app/core/guards

# Criar a pasta shared e suas subpastas
ng generate module shared --module app
mkdir -p src/app/shared/components src/app/shared/directives src/app/shared/pipes src/app/shared/models

# Criar os modelos em shared
touch src/app/shared/models/cliente.model.ts
touch src/app/shared/models/pedido.model.ts
touch src/app/shared/models/itens-pedido.model.ts
touch src/app/shared/models/vendedor.model.ts
touch src/app/shared/models/index.ts

# Criar os módulos para clientes, pedidos e vendedores e suas subpastas
ng generate module modules/clientes --module app
mkdir -p src/app/modules/clientes/components/cliente-list src/app/modules/clientes/components/cliente-detail src/app/modules/clientes/components/cliente-create src/app/modules/clientes/components/cliente-update src/app/modules/clientes/services src/app/modules/clientes/models
touch src/app/modules/clientes/services/cliente.service.ts
touch src/app/modules/clientes/models/index.ts

ng generate module modules/pedidos --module app
mkdir -p src/app/modules/pedidos/components/pedido-list src/app/modules/pedidos/components/pedido-detail src/app/modules/pedidos/components/pedido-create src/app/modules/pedidos/components/pedido-update src/app/modules/pedidos/services src/app/modules/pedidos/models
touch src/app/modules/pedidos/services/pedido.service.ts
touch src/app/modules/pedidos/models/index.ts

ng generate module modules/vendedores --module app
mkdir -p src/app/modules/vendedores/components/vendedor-list src/app/modules/vendedores/components/vendedor-detail src/app/modules/vendedores/components/vendedor-create src/app/modules/vendedores/components/vendedor-update src/app/modules/vendedores/services src/app/modules/vendedores/models
touch src/app/modules/vendedores/services/vendedor.service.ts
touch src/app/modules/vendedores/models/index.ts

# Criar o módulo layouts
ng generate module layouts --module app
mkdir -p src/app/layouts/components

# Criar o módulo pages e suas subpastas 
ng generate module pages --module app
ng generate module pages/home --module pages
ng generate module pages/about --module pages
ng generate module pages/clientes --module app/pages
ng generate module pages/pedidos --module app/pages
ng generate module pages/vendedores --module app/pages
mkdir -p src/app/pages/home/components
mkdir -p src/app/pages/about/components
mkdir -p src/app/pages/clientes/cliente-list-page src/app/pages/clientes/cliente-detail-page src/app/pages/clientes/cliente-create-page src/app/pages/clientes/cliente-update-page
mkdir -p src/app/pages/pedidos/pedido-list-page src/app/pages/pedidos/pedido-detail-page src/app/pages/pedidos/pedido-create-page src/app/pages/pedidos/pedido-update-page
mkdir -p src/app/pages/vendedores/vendedor-list-page src/app/pages/vendedores/vendedor-detail-page src/app/pages/vendedores/vendedor-create-page src/app/pages/vendedores/vendedor-update-page

# Adicionar os arquivos index.ts em cada diretório necessário
touch src/app/core/index.ts
touch src/app/core/services/index.ts
touch src/app/core/interceptors/index.ts
touch src/app/core/guards/index.ts
touch src/app/shared/index.ts
touch src/app/shared/components/index.ts
touch src/app/shared/directives/index.ts
touch src/app/shared/pipes/index.ts
touch src/app/modules/clientes/index.ts
touch src/app/modules/clientes/components/index.ts
touch src/app/modules/clientes/services/index.ts
touch src/app/modules/pedidos/index.ts
touch src/app/modules/pedidos/components/index.ts
touch src/app/modules/pedidos/services/index.ts
touch src/app/modules/vendedores/index.ts
touch src/app/modules/vendedores/components/index.ts
touch src/app/modules/vendedores/services/index.ts
touch src/app/layouts/index.ts
touch src/app/layouts/components/index.ts
touch src/app/pages/index.ts
touch src/app/pages/home/index.ts
touch src/app/pages/home/components/index.ts
touch src/app/pages/about/index.ts
touch src/app/pages/about/components/index.ts
touch src/app/pages/clientes/clientes-routing.module.ts
touch src/app/pages/clientes/clientes.module.ts
touch src/app/pages/clientes/index.ts
touch src/app/pages/pedidos/pedidos-routing.module.ts
touch src/app/pages/pedidos/pedidos.module.ts
touch src/app/pages/pedidos/index.ts
touch src/app/pages/vendedores/vendedores-routing.module.ts
touch src/app/pages/vendedores/vendedores.module.ts
touch src/app/pages/vendedores/index.ts
