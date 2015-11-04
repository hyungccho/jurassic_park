class Dinosaur < ActiveRecord::Base
  DINOSAURS = {
    carnivores: ["Tyrannosaurus", "Velociraptor", "Spinosaurus", "Megalosaurus"],
    herbivores: ["Brachiosaurus", "Stegosaurus", "Ankylosaurus", "Triceratops"]
  }

  validates :name, :species, presence: true
  validates :species, inclusion: { in: DINOSAURS[:carnivores].concat(DINOSAURS[:herbivores]) }

  after_initialize :set_type

  private

  def set_type
    if DINOSAURS[:carnivores].include?(species)
      self.type = "Carnivore"
    elsif DINOSAURS[:herbivores].include?(species)
      self.type = "Herbivore"
    end
  end
end
