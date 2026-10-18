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

package body org.allbinary.logic.java.anyType.ParamsUtil_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out ParamsUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ParamsUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ParamsUtil_Access is
      This : constant ParamsUtil_Access := new ParamsUtil;
   begin
      ParamsUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function viewParams (params : Ada_Tags_Tag_Array_Access) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      index : Integer;
   begin
        if (params) /= (null) then
            stringBuffer := StringMaker_Package.Create;
            for index in 0 .. (params'Length) - 1 loop
                stringBuffer.append (To_Unbounded_String (" "));
                stringBuffer.append (params (index).getName);
            end loop;
            return stringBuffer.toString;
        else
            return To_Unbounded_String ("Params Null");
        end if;
   end viewParams;

   procedure viewParams (params : Ada_Tags_Tag_Array_Access) is
      Java_Result : constant Unbounded_String := viewParams (params);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end viewParams;

end org.allbinary.logic.java.anyType.ParamsUtil_Package;


