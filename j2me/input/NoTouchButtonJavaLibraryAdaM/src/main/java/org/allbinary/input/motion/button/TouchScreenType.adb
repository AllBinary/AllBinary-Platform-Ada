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


package body org.allbinary.input.motion.button.TouchScreenType_Package is

   procedure Initialize_Fields (This : in out TouchScreenType'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out TouchScreenType'Class; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.name := name;
   end Initialize;

   function Create (name : Unbounded_String) return TouchScreenType_Access is
      This : constant TouchScreenType_Access := new TouchScreenType;
   begin
      TouchScreenType_Package.Initialize (This.all, name);
      return This;
   end Create;

   function getName (This : in out TouchScreenType) return Unbounded_String is
   begin
        return This.name;
   end getName;

   function toString (This : in out TouchScreenType) return Unbounded_String is
   begin
        return TouchScreenType'Class (This).getName;
   end toString;

end org.allbinary.input.motion.button.TouchScreenType_Package;


