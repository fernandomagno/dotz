module Rest
    class Service
        include HTTParty

        headers 'Content-Type' => 'application/json'
        base_uri CONFIG['base_uri']
    
        def get_filme
            self.class.get('/films/')
        end 

        def get_planets
            self.class.get('/planets')
        end

        def get_planet(count)
            self.class.get('/planets/' + count.to_s)
        end
        
    end
end
