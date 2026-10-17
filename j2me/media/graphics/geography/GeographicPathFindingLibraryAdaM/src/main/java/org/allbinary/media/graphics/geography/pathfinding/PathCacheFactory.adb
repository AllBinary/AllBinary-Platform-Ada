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


package body org.allbinary.media.graphics.geography.pathfinding.PathCacheFactory_Package is

   procedure Initialize_Fields (This : in out PathCacheFactory'Class) is
   begin
      null;
      This.basicArrayListUtil := BasicArrayListUtil_Package.getInstance;
      This.hashtable := StdUtil_Package.getInstance.createHashtable;
   end Initialize_Fields;


   procedure Initialize (This : in out PathCacheFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PathCacheFactory_Access is
      This : constant PathCacheFactory_Access := new PathCacheFactory;
   begin
      PathCacheFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return PathCacheFactory_Access is
   begin
        return PathCacheFactory_Package.pathFactory;
   end getInstance;

   function getSize (This : in out PathCacheFactory) return Integer is
   begin
        return This.hashtable.size;
   end getSize;

   procedure add (This : in out PathCacheFactory; pathId : Integer; list : BasicArrayList_Access) is
   begin
        This.hashtable.put (pathId, list);
   end add;

   procedure remove (This : in out PathCacheFactory; pathId : Integer) is
   begin
        This.hashtable.remove (pathId);
   end remove;

   --  throws Exception
   procedure removeAll (This : in out PathCacheFactory) is
   begin
        This.hashtable.clear;
        if (This.hashtable.size) > (0) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Did not clear")));
        end if;
   end removeAll;

   --  throws Exception
   function getOrCreate (This : in out PathCacheFactory; pathIdInteger : Integer) return BasicArrayList_Access is
      listCanBeNull : Java_Object_Access;
   begin
        listCanBeNull := This.hashtable.get (pathIdInteger);
        if (listCanBeNull) = (null) then
            listCanBeNull := This.basicArrayListUtil.getImmutableInstance;
        end if;
        return BasicArrayList_Access (listCanBeNull);
   end getOrCreate;

   procedure getOrCreate (This : in out PathCacheFactory; pathIdInteger : Integer) is
      Java_Result : constant BasicArrayList_Access := PathCacheFactory'Class (This).getOrCreate (pathIdInteger);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getOrCreate;

begin
   null;
   pathFactory := PathCacheFactory_Package.Create;

end org.allbinary.media.graphics.geography.pathfinding.PathCacheFactory_Package;


