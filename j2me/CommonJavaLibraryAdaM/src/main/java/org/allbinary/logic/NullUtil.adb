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

package body org.allbinary.logic.NullUtil_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   procedure Initialize_Fields (This : in out NullUtil'Class) is
   begin
      null;
      This.NULL_OBJECT := new Java_Object;
      This.NULL_CLASS := This.NULL_OBJECT.all'Tag;
      This.NULL_OBJECT_ARRAY := new Java_Object_Access_Array'(0 .. (0) - 1 => null);
      This.NULL_CHAR_ARRAY := new Character_Array'(0 .. (0) - 1 => ASCII.NUL);
      This.NULL_BYTE_ARRAY := new Short_Short_Integer_Array'(0 .. (0) - 1 => 0);
      This.NULL_SHORT_ARRAY_ARRAY := new Short_Integer_Array_Access_Array'(0 .. (0) - 1 => new Short_Integer_Array'(0 .. (0) - 1 => 0));
      This.NULL_INT_ARRAY := new Integer_Array'(0 .. (0) - 1 => 0);
      This.NULL_INT_ARRAY_ARRAY := new Integer_Array_Access_Array'(0 .. (0) - 1 => new Integer_Array'(0 .. (0) - 1 => 0));
      This.NULL_INT_ARRAY_ARRAY_ARRAY := new Integer_Array_Access_Array_Access_Array'(0 .. (0) - 1 => new Integer_Array_Access_Array'(0 .. (0) - 1 => new Integer_Array'(0 .. (0) - 1 => 0)));
      This.NULL_FLOAT_ARRAY := new Float_Array'(0 .. (0) - 1 => 0.0);
   end Initialize_Fields;

   procedure Initialize (This : in out NullUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullUtil_Access is
      This : constant NullUtil_Access := new NullUtil;
   begin
      NullUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return NullUtil_Access is
   begin
        return NullUtil_Package.instance;
   end getInstance;

begin
   null;
   instance := NullUtil_Package.Create;

end org.allbinary.logic.NullUtil_Package;


