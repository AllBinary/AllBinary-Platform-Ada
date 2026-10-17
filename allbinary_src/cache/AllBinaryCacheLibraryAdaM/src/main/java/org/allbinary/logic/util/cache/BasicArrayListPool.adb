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


package body org.allbinary.logic.util.cache.BasicArrayListPool_Package is

   procedure Initialize_Fields (This : in out BasicArrayListPool'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicArrayListPool'Class; cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface'Class) is
      cacheableInterfaceFactoryInterface : CacheableInterfaceFactoryInterface_Access := CacheableInterfaceFactoryInterface_Access (cacheableInterfaceFactoryInterface_Param);
   begin
        AbstractArrayListPool_Package.Initialize (This, cacheableInterfaceFactoryInterface);
   end Initialize;

   function Create (cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface'Class) return BasicArrayListPool_Access is
      This : constant BasicArrayListPool_Access := new BasicArrayListPool;
   begin
      BasicArrayListPool_Package.Initialize (This.all, cacheableInterfaceFactoryInterface_Param);
      return This;
   end Create;

   procedure clear (This : in out BasicArrayListPool) is
   begin
        This.buffers.clear;
   end clear;

   --  throws Exception
   function remove (This : in out BasicArrayListPool; key_Param : access Java_Object'Class) return CacheableInterface_Access is
      key : Java_Object_Access := Java_Object_Access (key_Param);
      size : Integer;
   begin
        size := This.buffers.size;
        if (size) > (0) then
            return CacheableInterface_Access (This.buffers.removeAt ((size) - (1)));
        else
            return This.cacheableInterfaceFactoryInterface.getInstance (key);
        end if;
   end remove;

   --  throws Exception
   procedure addAll (This : in out BasicArrayListPool; usedList_Param : access BasicArrayList'Class) is
      usedList : BasicArrayList_Access := BasicArrayList_Access (usedList_Param);
      anyType : CacheableInterface_Access;
      index : Integer;
   begin
        index := usedList.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            anyType := CacheableInterface_Access (usedList.objectArray (index));
            This.add (anyType);
        end loop;
        usedList.clear;
   end addAll;

   --  throws Exception
   procedure releaseUsedBackToPool (This : in out BasicArrayListPool; usedList_Param : access BasicArrayList'Class) is
      usedList : BasicArrayList_Access := BasicArrayList_Access (usedList_Param);
      list : BasicArrayListCacheable_Access;
      index : Integer;
   begin
        index := usedList.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            list := BasicArrayListCacheable_Access (usedList.objectArray (index));
            if (list.size) = (0) then
                usedList.removeAt (index);
                This.add (list);
            end if;
        end loop;
   end releaseUsedBackToPool;

   procedure remove (This : in out BasicArrayListPool; key_Param : access Java_Object'Class) is
      Java_Result : constant CacheableInterface_Access := BasicArrayListPool'Class (This).remove (key_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end remove;

end org.allbinary.logic.util.cache.BasicArrayListPool_Package;


