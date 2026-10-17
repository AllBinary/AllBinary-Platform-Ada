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


package body org.allbinary.logic.util.cache.BaseCircularPool_Package is

   procedure Initialize_Fields (This : in out BaseCircularPool'Class) is
   begin
      null;
      This.circularIndexUtil := CircularIndexUtil_Package.NULL_CIRCULAR_INDEX_UTIL;
      This.OBJECT_ARRAY := NullUtil_Package.getInstance.NULL_OBJECT_ARRAY;
   end Initialize_Fields;

   procedure Initialize (This : in out BaseCircularPool'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BaseCircularPool_Access is
      This : constant BaseCircularPool_Access := new BaseCircularPool;
   begin
      Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getNextInstance (This : in out BaseCircularPool) return Java_Object_Access is
      anyType : Java_Object_Access;
   begin
        anyType := This.OBJECT_ARRAY (This.circularIndexUtil.getIndex);
        This.circularIndexUtil.next;
        return anyType;
   end getNextInstance;

   procedure init (This : in out BaseCircularPool; allBinaryObjectFactoryInterface : AllBinaryObjectFactoryInterface_Access) is
      size : Integer;
      index : Integer;
   begin
        This.circularIndexUtil.setIndex (0);
        size := This.circularIndexUtil.getSize;
        for index in 0 .. (size) - 1 loop
            This.OBJECT_ARRAY (index) := allBinaryObjectFactoryInterface.getInstance;
        end loop;
   end init;

   --  throws Exception
   function getInstance (This : in out BaseCircularPool; index : Integer) return Java_Object_Access is
   begin
        return This.OBJECT_ARRAY (index);
   end getInstance;

   procedure getNextInstance (This : in out BaseCircularPool) is
      Java_Result : constant Java_Object_Access := BaseCircularPool'Class (This).getNextInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNextInstance;

   procedure getInstance (This : in out BaseCircularPool; index : Integer) is
      Java_Result : constant Java_Object_Access := BaseCircularPool'Class (This).getInstance (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.util.cache.BaseCircularPool_Package;


