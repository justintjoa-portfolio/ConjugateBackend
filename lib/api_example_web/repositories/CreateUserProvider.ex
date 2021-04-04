defmodule ApiExample.CreateUserRepository do

    def init(CreateUserProvider) do
        %{provider: CreateUserProvider}
    end

    def hello() do
        IO.puts "HELLO WORLD"
    end

    def createUser(userExists, name, phoneNumber) do
        if (userExists) do

        else
        
        end

    end
end