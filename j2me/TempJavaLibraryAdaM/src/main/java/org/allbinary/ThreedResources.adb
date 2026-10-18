-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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



package body org.allbinary.ThreedResources_Package is

   procedure Initialize_Fields (This : in out ThreedResources'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ThreedResources'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ThreedResources_Access is
      This : constant ThreedResources_Access := new ThreedResources;
   begin
      ThreedResources_Package.Initialize (This.all);
      return This;
   end Create;


   function getThreedResources return ThreedResources_Access is
   begin
        return ThreedResources_Package.threedResources;
   end getThreedResources;

   procedure add (This : in out ThreedResources) is
   begin
        null;
   end add;

begin
   null;
   threedResources := ThreedResources_Package.Create;

end org.allbinary.ThreedResources_Package;


