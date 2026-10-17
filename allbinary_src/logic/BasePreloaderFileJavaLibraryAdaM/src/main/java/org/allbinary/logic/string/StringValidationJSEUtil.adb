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


package body org.allbinary.logic.string_Id.StringValidationJSEUtil_Package is

   procedure Initialize_Fields (This : in out StringValidationJSEUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out StringValidationJSEUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return StringValidationJSEUtil_Access is
      This : constant StringValidationJSEUtil_Access := new StringValidationJSEUtil;
   begin
      StringValidationJSEUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function isBlank (string_Id : Unbounded_String) return Boolean is
      len : Integer;
      c : Character;
      i : Integer;
   begin
        len := Length (string_Id);
        for i in 0 .. (len) - 1 loop
            c := Element (string_Id, (i) + 1);
            if (Character_Package.isWhitespace (c)) = (False) then
                return False;
            end if;
        end loop;
        return True;
   end isBlank;

   procedure isBlank (string_Id : Unbounded_String) is
      Java_Result : constant Boolean := isBlank (string_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isBlank;

end org.allbinary.logic.string_Id.StringValidationJSEUtil_Package;


