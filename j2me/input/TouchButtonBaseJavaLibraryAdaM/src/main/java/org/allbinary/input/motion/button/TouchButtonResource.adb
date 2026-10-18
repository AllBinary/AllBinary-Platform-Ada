-- 
-- To change this license header, choose License Headers in Project Properties. 
-- To change this template file, choose Tools | Templates 
-- and open the template in the editor.  
--  Generated Code Do Not Modify



package body org.allbinary.input.motion.button.TouchButtonResource_Package is

   procedure Initialize_Fields (This : in out TouchButtonResource'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out TouchButtonResource'Class; resource : Unbounded_String; hint : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.RESOURCE := resource;
        This.HINT := hint;
   end Initialize;

   function Create (resource : Unbounded_String; hint : Unbounded_String) return TouchButtonResource_Access is
      This : constant TouchButtonResource_Access := new TouchButtonResource;
   begin
      TouchButtonResource_Package.Initialize (This.all, resource, hint);
      return This;
   end Create;

end org.allbinary.input.motion.button.TouchButtonResource_Package;


