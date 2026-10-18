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

package body org.allbinary.logic.java.array_Id.IntArrayUtil_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out IntArrayUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out IntArrayUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return IntArrayUtil_Access is
      This : constant IntArrayUtil_Access := new IntArrayUtil;
   begin
      IntArrayUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function toString (array_Id : Integer_Array_Access) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        for index in 0 .. (array_Id'Length) - 1 loop
            stringBuffer.appendint (array_Id (index));
            if (index) < (array_Id'Length) then
                stringBuffer.append (To_Unbounded_String (", "));
            end if;
        end loop;
        return stringBuffer.toString;
   end toString;

   function toString (array_Id : Integer_Array_Access_Array_Access) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      index2 : Integer;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        for index in 0 .. (array_Id'Length) - 1 loop
            stringBuffer.append (To_Unbounded_String ("{"));
            for index2 in 0 .. (array_Id (index)'Length) - 1 loop
                stringBuffer.appendint (Integer (array_Id (index) (index2)));
                if (index2) < ((array_Id (index)'Length) - (1)) then
                    stringBuffer.append (To_Unbounded_String (", "));
                end if;
            end loop;
            stringBuffer.append (To_Unbounded_String ("}"));
            if (index) < ((array_Id'Length) - (1)) then
                stringBuffer.append (To_Unbounded_String (", " & ASCII.LF & ""));
            end if;
        end loop;
        return stringBuffer.toString;
   end toString;

   function toString (array_Id : Integer_Array_Access_Array_Access_Array_Access) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      index3 : Integer;
      index2 : Integer;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        for index in 0 .. (array_Id'Length) - 1 loop
            stringBuffer.append (To_Unbounded_String ("{"));
            for index2 in 0 .. (array_Id (index)'Length) - 1 loop
                stringBuffer.append (To_Unbounded_String ("{"));
                for index3 in 0 .. (array_Id (index) (index2)'Length) - 1 loop
                    stringBuffer.appendint (Integer (array_Id (index) (index2) (index3)));
                    if (index3) < ((array_Id (index) (index2)'Length) - (1)) then
                        stringBuffer.append (To_Unbounded_String (", "));
                    end if;
                end loop;
                stringBuffer.append (To_Unbounded_String ("}"));
                if (index2) < ((array_Id (index)'Length) - (1)) then
                    stringBuffer.append (To_Unbounded_String (", "));
                end if;
            end loop;
            stringBuffer.append (To_Unbounded_String ("}"));
            if (index) < ((array_Id'Length) - (1)) then
                stringBuffer.append (To_Unbounded_String (", " & ASCII.LF & ""));
            end if;
        end loop;
        return stringBuffer.toString;
   end toString;

   procedure toString (array_Id : Integer_Array_Access) is
      Java_Result : constant Unbounded_String := toString (array_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

   procedure toString (array_Id : Integer_Array_Access_Array_Access) is
      Java_Result : constant Unbounded_String := toString (array_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

   procedure toString (array_Id : Integer_Array_Access_Array_Access_Array_Access) is
      Java_Result : constant Unbounded_String := toString (array_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.logic.java.array_Id.IntArrayUtil_Package;


