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


package body org.allbinary.game.configuration.feature.MainFeatureFactory_Package is

   procedure Initialize_Fields (This : in out MainFeatureFactory'Class) is
   begin
      null;
      This.FULL_SCREEN := Feature_Package.Create (To_Unbounded_String ("Full Screen"));
      This.TITLE_BAR := Feature_Package.Create (To_Unbounded_String ("Title Bar"));
      This.STATIC := Feature_Package.Create (To_Unbounded_String ("Static Dependent Feature"));
      This.LOAD_ONDEMAND := Feature_Package.Create (To_Unbounded_String ("Load OnDemand"));
      This.LOAD_ALL := Feature_Package.Create (To_Unbounded_String ("Load All"));
   end Initialize_Fields;

   procedure Initialize (This : in out MainFeatureFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MainFeatureFactory_Access is
      This : constant MainFeatureFactory_Access := new MainFeatureFactory;
   begin
      MainFeatureFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return MainFeatureFactory_Access is
   begin
        return MainFeatureFactory_Package.instance;
   end getInstance;

begin
   null;
   instance := MainFeatureFactory_Package.Create;

end org.allbinary.game.configuration.feature.MainFeatureFactory_Package;


