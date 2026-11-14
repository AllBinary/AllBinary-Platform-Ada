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



package body org.allbinary.game.gd.resource.GDResources_Package is

   procedure Initialize_Fields (This : in out GDResources'Class) is
   begin
      null;
      This.resourceStringArray := new Unbounded_String_Array'(1 .. 0 => <>);
      This.currentLayoutRequiredTotal := 0;
   end Initialize_Fields;

   procedure Initialize (This : in out GDResources'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GDResources_Access is
      This : constant GDResources_Access := new GDResources;
   begin
      GDResources_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return GDResources_Access is
   begin
        return GDResources_Package.instance;
   end getInstance;

begin
   null;
   instance := GDResources_Package.Create;

end org.allbinary.game.gd.resource.GDResources_Package;


