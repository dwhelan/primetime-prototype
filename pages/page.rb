class Page < SitePrism::Page

  element :logo, 'h1.logo a'

  section :search,   Search, '#zone-3a-2f-2fSynacor-2fPortal-2fPages-2fZones-2fHeader-2f-7ccomponent-3a-2f-2fSynacor-2fSearch-2fComponent-2fTabbed-2fInput-2f'
  section :navigate, NavBar, '#main_navzone-3a-2f-2fSynacor-2fPortal-2fPages-2fZones-2fHeader-2fNavigation-2f-7ccomponent-3a-2f-2fSynacor-2fPortal-2fComponents-2fHeader-2fNavigation-2fMain-2f'

  def self.with_name name
    Object.const_get(name).new
  end

  def name
    self.class.name
  end

  def element name
    send(name)
  end

  def load(expansion = {})
    super(expansion)
    @@current = self
  end

  def self.current
    @@current
  end
end

def current_page
  Page.current
end