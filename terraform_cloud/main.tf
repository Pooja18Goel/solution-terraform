#Learning HCL with cloud champ

/* this is a multi cloud */

#Block - Blocks are defined by their type and enclosed {}

block type{
    attribute1 = value1
    attribute2 = value2
}

#Attribute : It is a key value paper
Key = value
resource "aws_instance" "example1"{
    ami= "ami_image"
    count=3
}

#Datatypes
string1 = "string_value"
number1 =2
boolean = true/ false
list= ["item1", "item2", "item3"]
locals{
mymaps= {"name"= "John Doe", "age"= 30} #like dictionary in python
}

# locals.mymaps["age"]

#Conditions - important in HCL

resource"aws instance" "server"{
    instance_type = var.environment == "development" ? "t2.micro": "t2.small"
}

#function

locals{

name= "John"
fruits =["apple", "banana", "mango"]
message = "Hello ${upper(local.name)} ! I know you like ${join(",", local.fruits())}"

}


#Resource dependecny

# Explicit or implicit dependency
# Explicit dependency neeeds to handle by user


















