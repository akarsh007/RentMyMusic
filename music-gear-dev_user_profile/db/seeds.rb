# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(id: 1, name: 'Guitar', immediate_parent_list: [57], parent_list: [])
Category.create(id: 2, name: 'Acoustic Guitar', immediate_parent_list: [1], parent_list: [])
Category.create(id: 3, name: 'Electric Guitar', immediate_parent_list: [1,56], parent_list: [])
Category.create(id: 4, name: 'Bass Guitar', immediate_parent_list: [1,56], parent_list: [])
Category.create(id: 5, name: 'Woodwinds', immediate_parent_list: [], parent_list: [])
Category.create(id: 6, name: 'Piccolo', immediate_parent_list: [5], parent_list: [])
Category.create(id: 7, name: 'Flute', immediate_parent_list: [5,56], parent_list: [])
Category.create(id: 8, name: 'Clarinet', immediate_parent_list: [5], parent_list: [])
Category.create(id: 9, name: 'Oboe', immediate_parent_list: [5], parent_list: [])
Category.create(id: 10, name: 'Recorder', immediate_parent_list: [5], parent_list: [])
Category.create(id: 11, name: 'Saxophone', immediate_parent_list: [5], parent_list: [])
Category.create(id: 12, name: 'Bassoon', immediate_parent_list: [5], parent_list: [])
Category.create(id: 13, name: 'Shehnaai', immediate_parent_list: [5], parent_list: [])
Category.create(id: 14, name: 'Brass', immediate_parent_list: [], parent_list: [])
Category.create(id: 15, name: 'Trumpet', immediate_parent_list: [14], parent_list: [])
Category.create(id: 16, name: 'Trombone', immediate_parent_list: [14], parent_list: [])
Category.create(id: 17, name: 'French Horn', immediate_parent_list: [14,57], parent_list: [])
Category.create(id: 18, name: 'Tuba', immediate_parent_list: [14], parent_list: [])
Category.create(id: 19, name: 'Percussions', immediate_parent_list: [], parent_list: [])
Category.create(id: 20, name: 'Drum', immediate_parent_list: [19], parent_list: [])
Category.create(id: 21, name: 'Kettledrum', immediate_parent_list: [19], parent_list: [])
Category.create(id: 22, name: 'Bongos', immediate_parent_list: [19], parent_list: [])
Category.create(id: 23, name: 'Conga (drum)', immediate_parent_list: [19], parent_list: [])
Category.create(id: 24, name: 'Cymbals', immediate_parent_list: [19], parent_list: [])
Category.create(id: 25, name: 'Xylophone', immediate_parent_list: [19], parent_list: [])
Category.create(id: 26, name: 'Keyboards', immediate_parent_list: [], parent_list: [])
Category.create(id: 27, name: 'Piano', immediate_parent_list: [26,56,57], parent_list: [])
Category.create(id: 28, name: 'Electric Piano', immediate_parent_list: [27], parent_list: [])
Category.create(id: 29, name: 'Digital Piano', immediate_parent_list: [27], parent_list: [])
Category.create(id: 30, name: 'Organ', immediate_parent_list: [26], parent_list: [])
Category.create(id: 31, name: 'Synthesizer', immediate_parent_list: [26], parent_list: [])
Category.create(id: 32, name: 'Indian Harmonium', immediate_parent_list: [26], parent_list: [])
Category.create(id: 33, name: 'Hand Drums', immediate_parent_list: [], parent_list: [])
Category.create(id: 34, name: 'Damru', immediate_parent_list: [33], parent_list: [])
Category.create(id: 35, name: 'Dhol', immediate_parent_list: [33], parent_list: [])
Category.create(id: 36, name: 'Dholak', immediate_parent_list: [33], parent_list: [])
Category.create(id: 37, name: 'Dholki', immediate_parent_list: [33], parent_list: [])
Category.create(id: 38, name: 'Tabla', immediate_parent_list: [33], parent_list: [])
Category.create(id: 39, name: 'Tabla Tarang (Set of Tablas)', immediate_parent_list: [33], parent_list: [])
Category.create(id: 40, name: 'Other Strings', immediate_parent_list: [], parent_list: [])
Category.create(id: 41, name: 'Violin', immediate_parent_list: [40,57], parent_list: [])
Category.create(id: 42, name: 'Viola', immediate_parent_list: [40], parent_list: [])
Category.create(id: 43, name: 'Cello', immediate_parent_list: [40], parent_list: [])
Category.create(id: 44, name: 'Ukulele', immediate_parent_list: [40], parent_list: [])
Category.create(id: 45, name: 'Banjo', immediate_parent_list: [40], parent_list: [])
Category.create(id: 46, name: 'Mandolin', immediate_parent_list: [40], parent_list: [])
Category.create(id: 47, name: 'Harp', immediate_parent_list: [40,57], parent_list: [])
Category.create(id: 48, name: 'Sitar', immediate_parent_list: [40], parent_list: [])
Category.create(id: 49, name: 'Veena', immediate_parent_list: [40], parent_list: [])
Category.create(id: 50, name: 'Sarangi', immediate_parent_list: [40], parent_list: [])
Category.create(id: 51, name: 'Other Instruments', immediate_parent_list: [], parent_list: [])
Category.create(id: 52, name: 'Accordion', immediate_parent_list: [51], parent_list: [])
Category.create(id: 53, name: 'Harmonica', immediate_parent_list: [51], parent_list: [])
Category.create(id: 54, name: 'Mike', immediate_parent_list: [51,56], parent_list: [])
Category.create(id: 55, name: 'Speakers', immediate_parent_list: [51], parent_list: [])
Category.create(id: 56, name: 'Rock Music', immediate_parent_list: [], parent_list: [])
Category.create(id: 57, name: 'Orchestra', immediate_parent_list: [], parent_list: [])
Category.create(id: 58, name: 'Amplifier', immediate_parent_list: [51,56], parent_list: [])