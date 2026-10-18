-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with jsinterop.annotations.JsConstructor_Package; use jsinterop.annotations.JsConstructor_Package;

package body org.allbinary.util.BasicArrayListS_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package JsConstructor_Package renames Standard.jsinterop.annotations.JsConstructor_Package;
   procedure Initialize_Fields (This : in out BasicArrayListS'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicArrayListS'Class; size : Integer) is
   begin
        BasicArrayList_Package.Initialize (This, NullUtil_Package.getInstance.NULL_OBJECT_ARRAY);
        if (size) < (0) then
            Java_Throw (Java_New_Exception ("IllegalArgumentException", StringMaker_Package.Create.append (To_Unbounded_String ("Init Size Exception: ")).appendint (size).toString));
        end if;
        This.objectArray := new Java_Object_Access_Array'(0 .. (size) - 1 => null);
   end Initialize;

   function Create (size : Integer) return BasicArrayListS_Access is
      This : constant BasicArrayListS_Access := new BasicArrayListS;
   begin
      BasicArrayListS_Package.Initialize (This.all, size);
      return This;
   end Create;

end org.allbinary.util.BasicArrayListS_Package;


