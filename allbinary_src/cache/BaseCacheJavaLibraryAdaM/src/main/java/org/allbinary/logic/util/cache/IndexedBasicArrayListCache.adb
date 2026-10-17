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


package body org.allbinary.logic.util.cache.IndexedBasicArrayListCache_Package is

   procedure Initialize_Fields (This : in out IndexedBasicArrayListCache'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.size := 0;
      This.index := 0;
   end Initialize_Fields;


   --  throws Exception
   function createCache (size : Integer) return IndexedBasicArrayListCache_Access is
      indexedBasicArrayListCache : IndexedBasicArrayListCache_Access;
   begin
        indexedBasicArrayListCache := IndexedBasicArrayListCache_Package.Create;
        indexedBasicArrayListCache.init (size);
        return indexedBasicArrayListCache;
   end createCache;

   procedure Initialize (This : in out IndexedBasicArrayListCache'Class) is
   begin
      BaseBasicArrayListCache_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return IndexedBasicArrayListCache_Access is
      This : constant IndexedBasicArrayListCache_Access := new IndexedBasicArrayListCache;
   begin
      IndexedBasicArrayListCache_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out IndexedBasicArrayListCache; size : Integer) is
      index : Integer;
   begin
        if (This.size) < (size) then
            This.list.ensureCapacity (size);
            for index in reverse This.size .. (size) - (1) loop
                This.addDefault;
            end loop;
            This.size := size;
        end if;
   end init;

   function getAt (This : in out IndexedBasicArrayListCache; index : Integer) return Java_Object_Access is
   begin
        return This.list.objectArray (index);
   end getAt;

   --  throws Exception
   procedure addDefault (This : in out IndexedBasicArrayListCache) is
   begin
        null;
   end addDefault;

   --  throws Exception
   procedure addObject (This : in out IndexedBasicArrayListCache; anyType : Java_Object_Access) is
   begin
        This.list.add (anyType);
   end addObject;

   --  throws Exception
   procedure add (This : in out IndexedBasicArrayListCache; cacheableInterface : CacheableInterface_Access) is
   begin
        This.list.add (cacheableInterface);
   end add;

   --  throws Exception
   procedure addArray (This : in out IndexedBasicArrayListCache; cacheableInterfaces : CacheableInterface_Access_Array_Access) is
   begin
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Imple")));
   end addArray;

   procedure clear (This : in out IndexedBasicArrayListCache) is
   begin
        This.index := 0;
   end clear;

   procedure createCache (size : Integer) is
      Java_Result : constant IndexedBasicArrayListCache_Access := createCache (size);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createCache;

   procedure getAt (This : in out IndexedBasicArrayListCache; index : Integer) is
      Java_Result : constant Java_Object_Access := IndexedBasicArrayListCache'Class (This).getAt (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAt;

end org.allbinary.logic.util.cache.IndexedBasicArrayListCache_Package;


