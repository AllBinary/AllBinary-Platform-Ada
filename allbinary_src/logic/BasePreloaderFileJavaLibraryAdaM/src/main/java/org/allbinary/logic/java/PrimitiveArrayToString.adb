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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package body org.allbinary.logic.java.PrimitiveArrayToString_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out PrimitiveArrayToString'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PrimitiveArrayToString'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PrimitiveArrayToString_Access is
      This : constant PrimitiveArrayToString_Access := new PrimitiveArrayToString;
   begin
      PrimitiveArrayToString_Package.Initialize (This.all);
      return This;
   end Create;


   function toString (floats : Float_Array_Access) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        for index in 0 .. (floats'Length) - 1 loop
            stringBuffer.appendfloat (floats (index));
        end loop;
        return stringBuffer.toString;
   end toString;

   procedure toString (floats : Float_Array_Access) is
      Java_Result : constant Unbounded_String := toString (floats);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.logic.java.PrimitiveArrayToString_Package;


