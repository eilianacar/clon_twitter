class Tweet < ApplicationRecord

    include PgSearch::Model

    pg_search_scope :search_full_text, against: {
    description: 'A',
    userName: 'B',
    },
    using: {
        tsearch: {
            prefix: true, # Coincidencias de prefijo
            any_word: true,      
            dictionary: "spanish"  # Diccionario para búsqueda en español (opcional, reemplaza "spanish" según necesites)
        }
    }
   


end
