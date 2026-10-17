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


package body org.allbinary.data.tree.dom.ToDomHelper_Package is

   procedure Initialize_Fields (This : in out ToDomHelper'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ToDomHelper'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ToDomHelper_Access is
      This : constant ToDomHelper_Access := new ToDomHelper;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function convertNull (value : Unbounded_String) return Unbounded_String is
   begin
        if (value) = (Null_Unbounded_String) then
            value := StringUtil_Package.getInstance.NULL_STRING;
        end if;
        return value;
   end convertNull;

   procedure convertNull (value : Unbounded_String) is
      Java_Result : constant Unbounded_String := convertNull (value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end convertNull;

end org.allbinary.data.tree.dom.ToDomHelper_Package;


