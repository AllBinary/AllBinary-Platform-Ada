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


package body org.allbinary.logic.system.security.licensing.LockedResources_Package is

   procedure Initialize_Fields (This : in out LockedResources'Class) is
   begin
      null;
      This.LOCKED_DEMO_GAME_FEATURE_RESOURCE := To_Unbounded_String ("/locked_demo_game_feature_64_by_64.png");
   end Initialize_Fields;

   procedure Initialize (This : in out LockedResources'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LockedResources_Access is
      This : constant LockedResources_Access := new LockedResources;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return LockedResources_Access is
   begin
        return LockedResources_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant LockedResources_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := LockedResources_Package.Create;

end org.allbinary.logic.system.security.licensing.LockedResources_Package;


