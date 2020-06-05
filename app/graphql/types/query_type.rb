module Types
  class QueryType < Types::BaseObject
    field :fabrics, [Types::FabricType], null: false, description: "All Fabrics"
    field :flosses, [Types::FlossType], null: false
    field :needles, [Types::NeedleType], null: false
    field :notions, [Types::NotionType], null: false
    field :patterns, [Types::PatternType], null: false
    field :projects, [Types::ProjectType], null: false
    field :yarns, [Types::YarnType], null: false
    field :users, [Types::UserType], null: false, description: "Users"

    def fabrics
      Fabric.all
    end

    def flosses
      Floss.all
    end

    def needles
      Needle.all
    end

    def notions
      Notion.all
    end

    def patterns
      Pattern.all
    end

    def projects
      Project.all
    end

    def users
      User.all
    end

    def yarns
      Yarn.all
    end
  end
end
