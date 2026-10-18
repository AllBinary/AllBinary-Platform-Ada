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



package body org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package is

   procedure Initialize_Fields (This : in out OnDemandResourcesFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out OnDemandResourcesFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OnDemandResourcesFactory_Access is
      This : constant OnDemandResourcesFactory_Access := new OnDemandResourcesFactory;
   begin
      OnDemandResourcesFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function size (This : in out OnDemandResourcesFactory) return Integer is
   begin
        return 0;
   end size;

   function remove (This : in out OnDemandResourcesFactory; layerId : Integer) return OnDemandResources_Access is
   begin
        return OnDemandResources_Package.NULL_ON_DEMAND_RESOURCES;
   end remove;

   procedure remove (This : in out OnDemandResourcesFactory; layerId : Integer) is
      Java_Result : constant OnDemandResources_Access := OnDemandResourcesFactory'Class (This).remove (layerId => layerId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end remove;

end org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package;


