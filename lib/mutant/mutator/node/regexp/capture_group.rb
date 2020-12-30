# frozen_string_literal: true

module Mutant
  class Mutator
    class Node
      module Regexp
        # Mutator for regexp capture groups, such as `/(foo)/`
        class CaptureGroup < Node
          handle(:regexp_capture_group)

          children :group

        private

          def dispatch
            return unless group

            emit(s(:regexp_passive_group, group))
            emit_group_mutations
          end
        end # EndOfLineAnchor
      end # Regexp
    end # Node
  end # Mutator
end # Mutant
