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


package body org.allbinary.graphics.form.FormType_Package is

   procedure Initialize_Fields (This : in out FormType'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out FormType'Class; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.name := name;
   end Initialize;

   function Create (name : Unbounded_String) return FormType_Access is
      This : constant FormType_Access := new FormType;
   begin
      Initialize (This.all, name);
      return This;
   end Create;

   function toString (This : in out FormType) return Unbounded_String is
   begin
        return This.name;
   end toString;

   procedure toString (This : in out FormType) is
      Java_Result : constant Unbounded_String := FormType'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.graphics.form.FormType_Package;


