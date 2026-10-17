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


package body org.allbinary.audio.AudioContentTypeData_Package is

   procedure Initialize_Fields (This : in out AudioContentTypeData'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out AudioContentTypeData'Class; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.name := name;
   end Initialize;

   function Create (name : Unbounded_String) return AudioContentTypeData_Access is
      This : constant AudioContentTypeData_Access := new AudioContentTypeData;
   begin
      Initialize (This.all, name);
      return This;
   end Create;

   function getName (This : in out AudioContentTypeData) return Unbounded_String is
   begin
        return This.name;
   end getName;

   procedure getName (This : in out AudioContentTypeData) is
      Java_Result : constant Unbounded_String := AudioContentTypeData'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

end org.allbinary.audio.AudioContentTypeData_Package;


