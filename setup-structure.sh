# Execute o arquivo da seguinte maneira: 
# 1 - chmod +x setup-structure.sh
# 2 - ./setup-structure.sh

#!/bin/bash

# Criar a pasta core e suas subpastas
ng generate module core
mkdir -p src/app/core/services src/app/core/interceptors src/app/core/guards

# Criar a pasta shared e suas subpastas
ng generate module shared
mkdir -p src/app/shared/components src/app/shared/directives src/app/shared/pipes src/app/shared/models
# TODO: Component Navbar
ng generate component shared/componentes/header

# Criar os modelos em shared
# ng generate class shared/models/cliente --type=model
# ng generate class shared/models/pedido --type=model
# ng generate class shared/models/itens-pedido --type=model
# ng generate class shared/models/vendedor --type=model
touch src/app/shared/models/index.ts

# Criar os módulos para clientes, pedidos e vendedores e suas subpastas
ng generate module modules/clientes
mkdir -p src/app/modules/clientes/components

ng generate module modules/pedidos 
mkdir -p src/app/modules/pedidos/components

ng generate module modules/vendedores 
mkdir -p src/app/modules/vendedores/components

# Criar os services para Clientes, Pedidos e Vendedores e suas subpastas
ng generate service modules/clientes/services/cliente
ng generate service modules/pedidos/services/pedido
ng generate service modules/vendedores/services/vendedor

# Criar os models para Clientes, Pedidos e Vendedores
ng generate class modules/clientes/models/cliente --type=model
ng generate class modules/pedidos/models/pedido --type=model
ng generate class modules/pedidos/models/itens-pedido --type=model
ng generate class modules/vendedores/models/vendedor --type=model
touch src/app/modules/clientes/models/index.ts
touch src/app/modules/pedidos/models/index.ts
touch src/app/modules/vendedores/models/index.ts

# Criar o módulo layouts
ng generate module layouts
mkdir -p src/app/layouts/components

# Criar os módulos pages
ng generate module pages
ng generate module pages/home
ng generate module pages/about --routing
ng generate module pages/clientes --routing
ng generate module pages/pedidos --routing
ng generate module pages/vendedores --routing

# Criar os componentes sem subpasta (--flat)
ng generate component pages/about/about --flat
ng generate component pages/home/home --flat

# Criar os componentes com subpasta
ng generate component pages/clientes/cliente-create
ng generate component pages/clientes/cliente-detail
ng generate component pages/clientes/cliente-list
ng generate component pages/clientes/cliente-update

ng generate component pages/pedidos/pedidos-create
ng generate component pages/pedidos/pedidos-detail
ng generate component pages/pedidos/pedidos-list
ng generate component pages/pedidos/pedidos-update

ng generate component pages/vendedores/vendedores-create
ng generate component pages/vendedores/vendedores-detail
ng generate component pages/vendedores/vendedores-list
ng generate component pages/vendedores/vendedores-update


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
# Criar pasta component
touch src/app/layouts/index.ts
touch src/app/layouts/components/index.ts
touch src/app/pages/index.ts
touch src/app/pages/home/index.ts
# touch src/app/pages/home/components/index.ts
touch src/app/pages/about/index.ts
# touch src/app/pages/about/components/index.ts
# touch src/app/pages/clientes/clientes-routing.module.ts
# touch src/app/pages/clientes/clientes.module.ts
# touch src/app/pages/clientes/index.ts
# touch src/app/pages/pedidos/pedidos-routing.module.ts
# touch src/app/pages/pedidos/pedidos.module.ts
# touch src/app/pages/pedidos/index.ts
# touch src/app/pages/vendedores/vendedores-routing.module.ts
# touch src/app/pages/vendedores/vendedores.module.ts
# touch src/app/pages/vendedores/index.ts
