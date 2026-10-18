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



package body org.allbinary.logic.util.cache.BasicArrayListResetablePool_Package is

   procedure Initialize_Fields (This : in out BasicArrayListResetablePool'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicArrayListResetablePool'Class; cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface_Package.CacheableInterfaceFactoryInterface'Class) is
      cacheableInterfaceFactoryInterface : constant CacheableInterfaceFactoryInterface_Access := CacheableInterfaceFactoryInterface_Access (cacheableInterfaceFactoryInterface_Param);
   begin
        AbstractArrayListPool_Package.Initialize (This, cacheableInterfaceFactoryInterface);
   end Initialize;

   function Create (cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface_Package.CacheableInterfaceFactoryInterface'Class) return BasicArrayListResetablePool_Access is
      This : constant BasicArrayListResetablePool_Access := new BasicArrayListResetablePool;
   begin
      BasicArrayListResetablePool_Package.Initialize (This.all, cacheableInterfaceFactoryInterface_Param);
      return This;
   end Create;

   procedure clear (This : in out BasicArrayListResetablePool) is
   begin
        null;
   end clear;

   --  throws Exception
   function remove (This : in out BasicArrayListResetablePool; key_Param : access Java_Object'Class) return CacheableInterface_Access is
      key : constant Java_Object_Access := Java_Object_Access (key_Param);
      size : Integer;
   begin
        size := This.buffers.size;
        if (size) > (0) then
            return CacheableInterface_Access (This.buffers.removeAt ((size) - (1)));
        else
            return This.cacheableInterfaceFactoryInterface.getInstance (key);
        end if;
   end remove;

   procedure remove (This : in out BasicArrayListResetablePool; key_Param : access Java_Object'Class) is
      Java_Result : constant CacheableInterface_Access := BasicArrayListResetablePool'Class (This).remove (key_Param => key_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end remove;

   function remove (This : in out BasicArrayListResetablePool; Value : Unbounded_String) return CacheableInterface_Access is
   begin
      return BasicArrayListResetablePool'Class (This).remove (Java_Box (Value));
   end remove;

   procedure remove (This : in out BasicArrayListResetablePool; Value : Unbounded_String) is
      Java_Result : constant CacheableInterface_Access := BasicArrayListResetablePool'Class (This).remove (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end remove;

end org.allbinary.logic.util.cache.BasicArrayListResetablePool_Package;


