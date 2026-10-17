--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


package body org.allbinary.logic.system.hardware.components.Component_Package is

   procedure Initialize_Fields (This : in out Component'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out Component'Class; componentName : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.name := componentName;
   end Initialize;

   function Create (componentName : Unbounded_String) return Component_Access is
      This : constant Component_Access := new Component;
   begin
      Component_Package.Initialize (This.all, componentName);
      return This;
   end Create;

   function toString (This : in out Component) return Unbounded_String is
   begin
        return This.name;
   end toString;

end org.allbinary.logic.system.hardware.components.Component_Package;


