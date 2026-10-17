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


package body org.allbinary.logic.util.cache.AbstractArrayListPool_Package is

   procedure Initialize_Fields (This : in out AbstractArrayListPool'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.buffers := BasicArrayListD_Package.Create;
      
   end Initialize_Fields;


   procedure Initialize (This : in out AbstractArrayListPool'Class; cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface'Class) is
      cacheableInterfaceFactoryInterface : CacheableInterfaceFactoryInterface_Access := CacheableInterfaceFactoryInterface_Access (cacheableInterfaceFactoryInterface_Param);
   begin
      Initialize_Fields (This);
        This.cacheableInterfaceFactoryInterface := cacheableInterfaceFactoryInterface;
   end Initialize;

   function Create (cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface'Class) return AbstractArrayListPool_Access is
      This : constant AbstractArrayListPool_Access := new AbstractArrayListPool;
   begin
      AbstractArrayListPool_Package.Initialize (This.all, cacheableInterfaceFactoryInterface_Param);
      return This;
   end Create;

   --  throws Exception
   procedure clear (This : in out AbstractArrayListPool) is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end clear;

   --  throws Exception
   function remove (This : in out AbstractArrayListPool; key_Param : access Java_Object'Class) return CacheableInterface_Access is
      key : Java_Object_Access := Java_Object_Access (key_Param);
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end remove;

   --  throws Exception
   procedure add (This : in out AbstractArrayListPool; cacheableInterface_Param : access CacheableInterface'Class) is
      cacheableInterface : CacheableInterface_Access := CacheableInterface_Access (cacheableInterface_Param);
   begin
        This.buffers.add (cacheableInterface);
   end add;

   --  throws Exception
   procedure addArray (This : in out AbstractArrayListPool; cacheableInterfaces : CacheableInterface_Access_Array_Access) is
      index : Integer;
   begin
        for index in 0 .. (cacheableInterfaces'Length) - 1 loop
            This.buffers.add (cacheableInterfaces (index));
        end loop;
   end addArray;

   procedure remove (This : in out AbstractArrayListPool; key_Param : access Java_Object'Class) is
      Java_Result : constant CacheableInterface_Access := AbstractArrayListPool'Class (This).remove (key_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end remove;

end org.allbinary.logic.util.cache.AbstractArrayListPool_Package;


