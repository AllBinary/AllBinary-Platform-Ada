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


package body org.allbinary.logic.util.cache.CachePolicy_Package is

   procedure Initialize_Fields (This : in out CachePolicy'Class) is
   begin
      null;
      
      This.maxTime := 0;
      This.maxSize := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out CachePolicy'Class; name : Unbounded_String; maxTime : Long_Long_Integer; maxSize : Long_Long_Integer) is
   begin
      Initialize_Fields (This);
        This.name := name;
        This.setMaxTime (maxTime);
        This.setMaxSize (maxSize);
   end Initialize;

   function Create (name : Unbounded_String; maxTime : Long_Long_Integer; maxSize : Long_Long_Integer) return CachePolicy_Access is
      This : constant CachePolicy_Access := new CachePolicy;
   begin
      CachePolicy_Package.Initialize (This.all, name, maxTime, maxSize);
      return This;
   end Create;

   function getMaxTime (This : in out CachePolicy) return Long_Long_Integer is
   begin
        return This.maxTime;
   end getMaxTime;

   procedure setMaxTime (This : in out CachePolicy; maxTime : Long_Long_Integer) is
   begin
        This.maxTime := maxTime;
   end setMaxTime;

   function getMaxSize (This : in out CachePolicy) return Long_Long_Integer is
   begin
        return This.maxSize;
   end getMaxSize;

   procedure setMaxSize (This : in out CachePolicy; maxSize : Long_Long_Integer) is
   begin
        This.maxSize := maxSize;
   end setMaxSize;

   function getName (This : in out CachePolicy) return Unbounded_String is
   begin
        return This.name;
   end getName;

end org.allbinary.logic.util.cache.CachePolicy_Package;


