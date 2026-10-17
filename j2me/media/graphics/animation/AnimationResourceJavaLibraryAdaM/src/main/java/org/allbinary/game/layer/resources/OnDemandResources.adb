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


package body org.allbinary.game.layer.resources.OnDemandResources_Package is

   procedure Initialize_Fields (This : in out OnDemandResources'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out OnDemandResources'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return OnDemandResources_Access is
      This : constant OnDemandResources_Access := new OnDemandResources;
   begin
      OnDemandResources_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure waitFor (This : in out OnDemandResources) is
   begin
        null;
   end waitFor;

   --  throws Exception
   procedure init (This : in out OnDemandResources) is
   begin
        null;
   end init;

   --  throws Exception
   function initAt (This : in out OnDemandResources; imageCache : ImageCache_Access; resourceAnimationInterfaceFactoryInterfaceFactory : BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access; portion : Integer; loadingString : Unbounded_String; index : Integer) return Integer is
   begin
        return 0;
   end initAt;

   procedure initAt (This : in out OnDemandResources; imageCache : ImageCache_Access; resourceAnimationInterfaceFactoryInterfaceFactory : BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access; portion : Integer; loadingString : Unbounded_String; index : Integer) is
      Java_Result : constant Integer := OnDemandResources'Class (This).initAt (imageCache, resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end initAt;

begin
   null;
   NULL_ON_DEMAND_RESOURCES := OnDemandResources_Package.Create;

end org.allbinary.game.layer.resources.OnDemandResources_Package;


