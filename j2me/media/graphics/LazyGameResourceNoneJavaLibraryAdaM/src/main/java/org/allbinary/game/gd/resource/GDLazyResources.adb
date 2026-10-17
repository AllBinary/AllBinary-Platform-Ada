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


package body org.allbinary.game.gd.resource.GDLazyResources_Package is

   procedure Initialize_Fields (This : in out GDLazyResources'Class) is
   begin
      null;
      This.imageResourceWidthArray := new Integer_Array'(1 .. 0 => <>);
      This.imageResourceHeightArray := new Integer_Array'(1 .. 0 => <>);
      This.requiredResourcesBeforeLoadingArray := new Unbounded_String_Array'(1 .. 0 => <>);
   end Initialize_Fields;

   procedure Initialize (This : in out GDLazyResources'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GDLazyResources_Access is
      This : constant GDLazyResources_Access := new GDLazyResources;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return GDLazyResources_Access is
   begin
        return GDLazyResources_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant GDLazyResources_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := GDLazyResources_Package.Create;

end org.allbinary.game.gd.resource.GDLazyResources_Package;


