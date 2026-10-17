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


package body org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package is

   procedure Initialize_Fields (This : in out ChangedGameFeatureListener'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ChangedGameFeatureListener'Class) is
   begin
      BaseChangedGameFeatureListener_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return ChangedGameFeatureListener_Access is
      This : constant ChangedGameFeatureListener_Access := new ChangedGameFeatureListener;
   begin
      ChangedGameFeatureListener_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ChangedGameFeatureListener_Access is
   begin
        return ChangedGameFeatureListener_Package.gameFeatureListener;
   end getInstance;

   function isChangedGameConfiguration (This : in out ChangedGameFeatureListener; gameConfiguration : GameConfiguration_Access) return Boolean is
   begin
        return This.list.contains (gameConfiguration);
   end isChangedGameConfiguration;

   procedure isChangedGameConfiguration (This : in out ChangedGameFeatureListener; gameConfiguration : GameConfiguration_Access) is
      Java_Result : constant Boolean := ChangedGameFeatureListener'Class (This).isChangedGameConfiguration (gameConfiguration);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isChangedGameConfiguration;

begin
   null;
   gameFeatureListener := ChangedGameFeatureListener_Package.Create;

end org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package;


