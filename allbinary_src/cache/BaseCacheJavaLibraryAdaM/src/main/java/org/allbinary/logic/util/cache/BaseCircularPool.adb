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
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with jsinterop.annotations.JsProperty_Package; use jsinterop.annotations.JsProperty_Package;
with org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package; use org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package;
with org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package;

package body org.allbinary.logic.util.cache.BaseCircularPool_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   package JsProperty_Package renames Standard.jsinterop.annotations.JsProperty_Package;
   subtype CircularIndexUtil_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access;
   function "=" (Left, Right : CircularIndexUtil_Access) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array;
   function "=" (Left, Right : CircularIndexUtil_Access_Array) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access;
   function "=" (Left, Right : CircularIndexUtil_Access_Array_Access) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array;
   function "=" (Left, Right : CircularIndexUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CircularIndexUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype AllBinaryObjectFactoryInterface_Access is org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References.AllBinaryObjectFactoryInterface_Access;
   function "=" (Left, Right : AllBinaryObjectFactoryInterface_Access) return Boolean renames org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References."=";
   subtype AllBinaryObjectFactoryInterface_Access_Array is org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References.AllBinaryObjectFactoryInterface_Access_Array;
   function "=" (Left, Right : AllBinaryObjectFactoryInterface_Access_Array) return Boolean renames org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References."=";
   subtype AllBinaryObjectFactoryInterface_Access_Array_Access is org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References.AllBinaryObjectFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : AllBinaryObjectFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References."=";
   subtype AllBinaryObjectFactoryInterface_Access_Array_Access_Array is org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References.AllBinaryObjectFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryObjectFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References."=";
   subtype AllBinaryObjectFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References.AllBinaryObjectFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryObjectFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References."=";
   procedure Initialize_Fields (This : in out BaseCircularPool'Class) is
   begin
      null;
      This.circularIndexUtil := CircularIndexUtil_Access (CircularIndexUtil_Package.NULL_CIRCULAR_INDEX_UTIL);
      This.OBJECT_ARRAY := NullUtil_Package.getInstance.NULL_OBJECT_ARRAY;
   end Initialize_Fields;

   procedure Initialize (This : in out BaseCircularPool'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BaseCircularPool_Access is
      This : constant BaseCircularPool_Access := new BaseCircularPool;
   begin
      BaseCircularPool_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getNextInstance (This : in out BaseCircularPool) return Java_Object_Access is
      anyType : Java_Object_Access;
   begin
        anyType := This.OBJECT_ARRAY (This.circularIndexUtil.getIndex);
        declare Java_Result renames This.circularIndexUtil.next; pragma Unreferenced (Java_Result); begin null; end;
        return anyType;
   end getNextInstance;

   procedure init (This : in out BaseCircularPool; allBinaryObjectFactoryInterface_Param : access AllBinaryObjectFactoryInterface_Package.AllBinaryObjectFactoryInterface'Class) is
      allBinaryObjectFactoryInterface : constant AllBinaryObjectFactoryInterface_Access := AllBinaryObjectFactoryInterface_Access (allBinaryObjectFactoryInterface_Param);
      size : Integer;
      index : Integer;
   begin
        This.circularIndexUtil.setIndex (0);
        size := This.circularIndexUtil.getSize;
        for index in 0 .. (size) - 1 loop
            This.OBJECT_ARRAY (index) := Java_Object_Access (allBinaryObjectFactoryInterface.getInstance);
        end loop;
   end init;

   --  throws Exception
   function getInstance (This : in out BaseCircularPool; index : Integer) return Java_Object_Access is
   begin
        return This.OBJECT_ARRAY (index);
   end getInstance;

   procedure getInstance (This : in out BaseCircularPool; index : Integer) is
      Java_Result : constant Java_Object_Access := BaseCircularPool'Class (This).getInstance (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.util.cache.BaseCircularPool_Package;


