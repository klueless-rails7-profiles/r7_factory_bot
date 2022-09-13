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
    Employee.delete_all
    Tenant.delete_all
    Role.delete_all
    App.delete_all
  end

  def refresh
  end

  def generate
    app = create(:app)
    tenants = create_list(:tenant, rand(3..5))#, app: app)
    employees = create_list(:employee, rand(10..20), tenant: tenants.sample)
    _articles = create_list(:article, rand(10..20), tenant: tenants.sample, employee: employees.sample)
    _projects = create_list(:project, rand(10..20), tenant: tenants.sample)
  end
end
