class Page < SitePrism::Page

  element :logo, 'h1.logo a'

  section :search, Search, '#zone-3a-2f-2fSynacor-2fPortal-2fPages-2fZones-2fHeader-2f-7ccomponent-3a-2f-2fSynacor-2fSearch-2fComponent-2fTabbed-2fInput-2f'

  def load(expansion = {})
    super(expansion)
    @@current = self
  end

  def self.current
    @@current
  end
end