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


package body org.allbinary.graphics.color.BasicColorCacheFactory_Package is

   procedure Initialize_Fields (This : in out BasicColorCacheFactory'Class) is
   begin
      null;
      This.hashtable := StdUtil_Package.getInstance.createHashtable;
   end Initialize_Fields;


   function getInstance return BasicColorCacheFactory_Access is
   begin
        return BasicColorCacheFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out BasicColorCacheFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BasicColorCacheFactory_Access is
      This : constant BasicColorCacheFactory_Access := new BasicColorCacheFactory;
   begin
      BasicColorCacheFactory_Package.Initialize (This.all);
      return This;
   end Create;

   procedure add (This : in out BasicColorCacheFactory; basicDefaultColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicDefaultColor : constant BasicColor_Access := BasicColor_Access (basicDefaultColor_Param);
   begin
        This.hashtable.put (basicDefaultColor.intValue, basicDefaultColor);
   end add;

   function getAndOrCreate (This : in out BasicColorCacheFactory; integer_Id : Integer) return BasicColor_Access is
      basicColor : BasicColor_Access;
   begin
        basicColor := BasicColor_Access (This.hashtable.get (integer_Id));
        if (basicColor) = (null) then
            basicColor := BasicColorFactory_Package.getInstance.createInstance (Integer (integer_Id));
            This.hashtable.put (integer_Id, basicColor);
        end if;
        return basicColor;
   end getAndOrCreate;

   procedure getAndOrCreate (This : in out BasicColorCacheFactory; integer_Id : Integer) is
      Java_Result : constant BasicColor_Access := BasicColorCacheFactory'Class (This).getAndOrCreate (integer_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAndOrCreate;

begin
   null;
   instance := BasicColorCacheFactory_Package.Create;

end org.allbinary.graphics.color.BasicColorCacheFactory_Package;


