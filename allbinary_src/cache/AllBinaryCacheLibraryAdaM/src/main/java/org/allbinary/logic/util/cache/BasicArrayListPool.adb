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


   procedure Initialize (This : in out BasicArrayListPool'Class; cacheableInterfaceFactoryInterface : CacheableInterfaceFactoryInterface_Access) is
   begin
        AbstractArrayListPool_Package.Initialize (This, cacheableInterfaceFactoryInterface);
   end Initialize;

   function Create (cacheableInterfaceFactoryInterface : CacheableInterfaceFactoryInterface_Access) return BasicArrayListPool_Access is
      This : constant BasicArrayListPool_Access := new BasicArrayListPool;
   begin
      Initialize (This.all, cacheableInterfaceFactoryInterface);
      return This;
   end Create;

   procedure clear (This : in out BasicArrayListPool) is
   begin
        This.buffers.clear;
   end clear;

   --  throws Exception
   function remove (This : in out BasicArrayListPool; key : Java_Object_Access) return CacheableInterface_Access is
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
   procedure addAll (This : in out BasicArrayListPool; usedList : BasicArrayList_Access) is
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
   procedure releaseUsedBackToPool (This : in out BasicArrayListPool; usedList : BasicArrayList_Access) is
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

   procedure remove (This : in out BasicArrayListPool; key : Java_Object_Access) is
      Java_Result : constant CacheableInterface_Access := BasicArrayListPool'Class (This).remove (key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end remove;

end org.allbinary.logic.util.cache.BasicArrayListPool_Package;


