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


package body org.allbinary.logic.util.cache.BasicArrayListCacheable_Package is

   procedure Initialize_Fields (This : in out BasicArrayListCacheable'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out BasicArrayListCacheable'Class) is
   begin
      BasicArrayListD_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return BasicArrayListCacheable_Access is
      This : constant BasicArrayListCacheable_Access := new BasicArrayListCacheable;
   begin
      BasicArrayListCacheable_Package.Initialize (This.all);
      return This;
   end Create;


   function getKey (This : in out BasicArrayListCacheable) return Java_Object_Access is
   begin
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end getKey;

end org.allbinary.logic.util.cache.BasicArrayListCacheable_Package;


