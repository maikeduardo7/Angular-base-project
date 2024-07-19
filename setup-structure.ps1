# Execute o arquivo da seguinte maneira: 
# 1 - Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
# 2 - .\setup-structure.ps1

# Criar a pasta core e suas subpastas
ng generate module core 
New-Item -ItemType Directory -Path "src/app/core/services"
New-Item -ItemType Directory -Path "src/app/core/interceptors"
New-Item -ItemType Directory -Path "src/app/core/guards"

# Criar a pasta shared e suas subpastas
ng generate module shared 
New-Item -ItemType Directory -Path "src/app/shared/components"
New-Item -ItemType Directory -Path "src/app/shared/directives"
New-Item -ItemType Directory -Path "src/app/shared/pipes"
New-Item -ItemType Directory -Path "src/app/shared/models"

# Criar os modelos em shared
New-Item -ItemType File -Path "src/app/shared/models/cliente.model.ts"
New-Item -ItemType File -Path "src/app/shared/models/pedido.model.ts"
New-Item -ItemType File -Path "src/app/shared/models/itens-pedido.model.ts"
New-Item -ItemType File -Path "src/app/shared/models/vendedor.model.ts"
New-Item -ItemType File -Path "src/app/shared/models/index.ts"

# Criar os módulos para clientes, pedidos e vendedores e suas subpastas
ng generate module modules/clientes 
New-Item -ItemType Directory -Path "src/app/modules/clientes/components/cliente-list"
New-Item -ItemType Directory -Path "src/app/modules/clientes/components/cliente-detail"
New-Item -ItemType Directory -Path "src/app/modules/clientes/components/cliente-create"
New-Item -ItemType Directory -Path "src/app/modules/clientes/components/cliente-update"
New-Item -ItemType Directory -Path "src/app/modules/clientes/services"
New-Item -ItemType Directory -Path "src/app/modules/clientes/models"
New-Item -ItemType File -Path "src/app/modules/clientes/services/cliente.service.ts"
New-Item -ItemType File -Path "src/app/modules/clientes/models/index.ts"

ng generate module modules/pedidos 
New-Item -ItemType Directory -Path "src/app/modules/pedidos/components/pedido-list"
New-Item -ItemType Directory -Path "src/app/modules/pedidos/components/pedido-detail"
New-Item -ItemType Directory -Path "src/app/modules/pedidos/components/pedido-create"
New-Item -ItemType Directory -Path "src/app/modules/pedidos/components/pedido-update"
New-Item -ItemType Directory -Path "src/app/modules/pedidos/services"
New-Item -ItemType Directory -Path "src/app/modules/pedidos/models"
New-Item -ItemType File -Path "src/app/modules/pedidos/services/pedido.service.ts"
New-Item -ItemType File -Path "src/app/modules/pedidos/models/index.ts"

ng generate module modules/vendedores 
New-Item -ItemType Directory -Path "src/app/modules/vendedores/components/vendedor-list"
New-Item -ItemType Directory -Path "src/app/modules/vendedores/components/vendedor-detail"
New-Item -ItemType Directory -Path "src/app/modules/vendedores/components/vendedor-create"
New-Item -ItemType Directory -Path "src/app/modules/vendedores/components/vendedor-update"
New-Item -ItemType Directory -Path "src/app/modules/vendedores/services"
New-Item -ItemType Directory -Path "src/app/modules/vendedores/models"
New-Item -ItemType File -Path "src/app/modules/vendedores/services/vendedor.service.ts"
New-Item -ItemType File -Path "src/app/modules/vendedores/models/index.ts"

# Criar o módulo layouts
ng generate module layouts 
New-Item -ItemType Directory -Path "src/app/layouts/components"

# Criar o módulo pages e suas subpastas 
ng generate module pages 
ng generate module pages/home 
ng generate module pages/about 
ng generate module pages/clientes 
ng generate module pages/pedidos
ng generate module pages/vendedores
New-Item -ItemType Directory -Path "src/app/pages/home/components"
New-Item -ItemType Directory -Path "src/app/pages/about/components"
New-Item -ItemType Directory -Path "src/app/pages/clientes/cliente-list-page"
New-Item -ItemType Directory -Path "src/app/pages/clientes/cliente-detail-page"
New-Item -ItemType Directory -Path "src/app/pages/clientes/cliente-create-page"
New-Item -ItemType Directory -Path "src/app/pages/clientes/cliente-update-page"
New-Item -ItemType Directory -Path "src/app/pages/pedidos/pedido-list-page"
New-Item -ItemType Directory -Path "src/app/pages/pedidos/pedido-detail-page"
New-Item -ItemType Directory -Path "src/app/pages/pedidos/pedido-create-page"
New-Item -ItemType Directory -Path "src/app/pages/pedidos/pedido-update-page"
New-Item -ItemType Directory -Path "src/app/pages/vendedores/vendedor-list-page"
New-Item -ItemType Directory -Path "src/app/pages/vendedores/vendedor-detail-page"
New-Item -ItemType Directory -Path "src/app/pages/vendedores/vendedor-create-page"
New-Item -ItemType Directory -Path "src/app/pages/vendedores/vendedor-update-page"

# Adicionar os arquivos index.ts em cada diretório necessário
New-Item -ItemType File -Path "src/app/core/index.ts"
New-Item -ItemType File -Path "src/app/core/services/index.ts"
New-Item -ItemType File -Path "src/app/core/interceptors/index.ts"
New-Item -ItemType File -Path "src/app/core/guards/index.ts"
New-Item -ItemType File -Path "src/app/shared/index.ts"
New-Item -ItemType File -Path "src/app/shared/components/index.ts"
New-Item -ItemType File -Path "src/app/shared/directives/index.ts"
New-Item -ItemType File -Path "src/app/shared/pipes/index.ts"
New-Item -ItemType File -Path "src/app/modules/clientes/index.ts"
New-Item -ItemType File -Path "src/app/modules/clientes/components/index.ts"
New-Item -ItemType File -Path "src/app/modules/clientes/services/index.ts"
New-Item -ItemType File -Path "src/app/modules/pedidos/index.ts"
New-Item -ItemType File -Path "src/app/modules/pedidos/components/index.ts"
New-Item -ItemType File -Path "src/app/modules/pedidos/services/index.ts"
New-Item -ItemType File -Path "src/app/modules/vendedores/index.ts"
New-Item -ItemType File -Path "src/app/modules/vendedores/components/index.ts"
New-Item -ItemType File -Path "src/app/modules/vendedores/services/index.ts"
New-Item -ItemType File -Path "src/app/layouts/index.ts"
New-Item -ItemType File -Path "src/app/layouts/components/index.ts"
New-Item -ItemType File -Path "src/app/pages/index.ts"
New-Item -ItemType File -Path "src/app/pages/home/index.ts"
New-Item -ItemType File -Path "src/app/pages/home/components/index.ts"
New-Item -ItemType File -Path "src/app/pages/about/index.ts"
New-Item -ItemType File -Path "src/app/pages/about/components/index.ts"
New-Item -ItemType File -Path "src/app/pages/clientes/clientes-routing.module.ts"
New-Item -ItemType File -Path "src/app/pages/clientes/clientes.module.ts"
New-Item -ItemType File -Path "src/app/pages/clientes/index.ts"
New-Item -ItemType File -Path "src/app/pages/pedidos/pedidos-routing.module.ts"
New-Item -ItemType File -Path "src/app/pages/pedidos/pedidos.module.ts"
New-Item -ItemType File -Path "src/app/pages/pedidos/index.ts"
New-Item -ItemType File -Path "src/app/pages/vendedores/vendedores-routing.module.ts"
New-Item -ItemType File -Path "src/app/pages/vendedores/vendedores.module.ts"
New-Item -ItemType File -Path "src/app/pages/vendedores/index.ts"
