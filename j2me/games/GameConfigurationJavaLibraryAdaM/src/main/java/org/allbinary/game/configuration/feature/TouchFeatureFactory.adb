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


package body org.allbinary.game.configuration.feature.TouchFeatureFactory_Package is

   procedure Initialize_Fields (This : in out TouchFeatureFactory'Class) is
   begin
      null;
      This.TOUCH_ENABLED := TouchFeature_Package.Create (To_Unbounded_String ("Touch Enabled"));
      This.SHOW_SCREEN_BUTTONS := TouchFeature_Package.Create (To_Unbounded_String ("Show"));
      This.AUTO_HIDE_SHOW_SCREEN_BUTTONS := TouchFeature_Package.Create (To_Unbounded_String ("Auto Hide (One Level)"));
      This.HIDE_SCREEN_BUTTONS := TouchFeature_Package.Create (To_Unbounded_String ("Hide"));
   end Initialize_Fields;


   function getInstance return TouchFeatureFactory_Access is
   begin
        return TouchFeatureFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out TouchFeatureFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TouchFeatureFactory_Access is
      This : constant TouchFeatureFactory_Access := new TouchFeatureFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant TouchFeatureFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := TouchFeatureFactory_Package.Create;

end org.allbinary.game.configuration.feature.TouchFeatureFactory_Package;


