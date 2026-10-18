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


with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with jsinterop.annotations.JsConstructor_Package; use jsinterop.annotations.JsConstructor_Package;
with jsinterop.annotations.JsProperty_Package; use jsinterop.annotations.JsProperty_Package;

package body org.allbinary.util.CircularIndexUtil_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   package JsConstructor_Package renames Standard.jsinterop.annotations.JsConstructor_Package;
   package JsProperty_Package renames Standard.jsinterop.annotations.JsProperty_Package;
   procedure Initialize_Fields (This : in out CircularIndexUtil'Class) is
   begin
      null;
      This.index := 0;
      This.lastIndex := 0;
      This.size := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out CircularIndexUtil'Class; index : Integer; size : Integer) is
   begin
      Initialize_Fields (This);
        CircularIndexUtil'Class (This).setSize (size);
        CircularIndexUtil'Class (This).setIndex (index);
   end Initialize;

   function Create (index : Integer; size : Integer) return CircularIndexUtil_Access is
      This : constant CircularIndexUtil_Access := new CircularIndexUtil;
   begin
      CircularIndexUtil_Package.Initialize (This.all, index, size);
      return This;
   end Create;

   function next (This : in out CircularIndexUtil) return Integer is
   begin
        if (This.index) >= (This.lastIndex) then
            This.index := 0;
        else
            This.index := This.index + 1;
        end if;
        return This.index;
   end next;

   function previous (This : in out CircularIndexUtil) return Integer is
   begin
        if (This.index) < (1) then
            This.index := This.lastIndex;
        else
            This.index := This.index - 1;
        end if;
        return This.index;
   end previous;

   procedure setIndex (This : in out CircularIndexUtil; index : Integer) is
   begin
        if (index) > (This.lastIndex) then
            return;
        end if;
        This.index := index;
   end setIndex;

   function getIndex (This : in out CircularIndexUtil) return Integer is
   begin
        return This.index;
   end getIndex;

   function createInstance (max : Integer) return CircularIndexUtil_Access is
   begin
        return CircularIndexUtil_Package.Create (0, max);
   end createInstance;

   function createInstanceAt (index : Integer; max : Integer) return CircularIndexUtil_Access is
   begin
        return CircularIndexUtil_Package.Create (index, max);
   end createInstanceAt;

   procedure setSize (This : in out CircularIndexUtil; size : Integer) is
   begin
        This.size := size;
        This.lastIndex := (size) - (1);
        This.index := 0;
   end setSize;

   function getSize (This : in out CircularIndexUtil) return Integer is
   begin
        return This.size;
   end getSize;

   function toString (This : in out CircularIndexUtil) return Unbounded_String is
   begin
        return StringMaker_Package.Create.append (CommonLabels_Package.getInstance.INDEX_LABEL).appendint (This.index).append (To_Unbounded_String ("lastIndex: ")).appendint (This.lastIndex).append (To_Unbounded_String ("size: ")).appendint (This.size).toString;
   end toString;

   procedure createInstance (max : Integer) is
      Java_Result : constant CircularIndexUtil_Access := createInstance (max => max);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createInstance;

   procedure createInstanceAt (index : Integer; max : Integer) is
      Java_Result : constant CircularIndexUtil_Access := createInstanceAt (index => index, max => max);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createInstanceAt;

begin
   null;
   NULL_CIRCULAR_INDEX_UTIL := CircularIndexUtil_Package.Create (0, 0);

end org.allbinary.util.CircularIndexUtil_Package;


