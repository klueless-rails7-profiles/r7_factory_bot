class SeedService
  include FactoryBot::Syntax::Methods

  class << self
    def seed(variant: :reset)
      service = SeedService.new
      service.call(variant: variant)
    end
  end

  def call(variant: :reset)
    reset     if variant == :reset
    refresh   if variant == :refresh
    generate
  end

  private

  def reset
    Video.delete_all
    Article.delete_all
    Project.delete_all
    EmployeeRole.delete_all
    Employee.delete_all
    Role.delete_all
    Company.delete_all
    Region.delete_all
  end

  def refresh
  end

  # add_scaffold('region', 'name', 'settings:json')
  # add_scaffold('company', 'name', 'slug', 'active:boolean', 'region:references')
  # add_scaffold('role', 'code', 'description') # contributor, moderator, admin
  # add_scaffold('employee', 'first_name', 'last_name', 'address:text', 'email', 'password', 'company:references')
  # add_scaffold('employee_role', 'employee:references', 'role:references')
  # add_scaffold('project', 'name', 'status', 'budget:decimal', 'country', 'progress:integer', 'company:references')
  # add_scaffold('article', 'title', 'body:text', 'is_featured:boolean', 'published:datetime', 'employee:references', 'company:references')
  # add_scaffold('video', 'title', 'youtube_id', '', 'article:references')

  def generate
    regions = create_list(:region, rand(2..5))
    # tenants = create_list(:tenant, rand(3..5))#, region: region)
    # employees = create_list(:employee, rand(10..20), tenant: tenants.sample)
    # _articles = create_list(:article, rand(10..20), tenant: tenants.sample, employee: employees.sample)
    # _projects = create_list(:project, rand(10..20), tenant: tenants.sample)
  end
end
