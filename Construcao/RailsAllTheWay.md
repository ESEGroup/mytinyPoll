## Migrando para o Rails (Julho de 2016)

### "Principles of Rails"
1. Rails is Opinionated
2. Rails is Omakase
3. Convention Over Configuration
4. DRY - Don’t Repeat Yourself

### Problemas
1. Conventions or Magic?
2. I’m not sure where the code goes

### Variaveis
* :var -> **Symbol** (http://stackoverflow.com/questions/6337897/what-is-the-colon-operator-in-ruby)
* @var == self.var -> **Instance variables** (http://www.tutorialspoint.com/ruby/ruby_variables.htm)
* @@var -> **Class variables** (http://www.tutorialspoint.com/ruby/ruby_variables.htm)

### Convenções no Ruby
1. Lógica no Model!

### Autenticação de usuários e criação de papeis
1. Formas de criação de "Roles" no RoR
    * For each user create a table in the database and corresponding model.
    * Create a single table in the database and for each user type create a model. This is called single table inheritance (STI).

2.