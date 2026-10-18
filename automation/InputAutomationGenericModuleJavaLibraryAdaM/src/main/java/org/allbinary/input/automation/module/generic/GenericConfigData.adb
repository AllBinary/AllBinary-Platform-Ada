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



package body org.allbinary.input.automation.module.generic_Id.GenericConfigData_Package is

   procedure Initialize_Fields (This : in out GenericConfigData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out GenericConfigData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GenericConfigData_Access is
      This : constant GenericConfigData_Access := new GenericConfigData;
   begin
      GenericConfigData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   RELATIVE_PATH := To_Unbounded_String ("./");
   CONFIG_PATH := To_Unbounded_String ("modules/configs/");
   MODULE_RELATIVE_PATH := Java_Image ((GenericConfigData_Package.RELATIVE_PATH) + (GenericConfigData_Package.CONFIG_PATH)) & To_Unbounded_String ("allbinary/input/automation/module/");
   GAME_MODULE_RELATIVE_PATH := Java_Image (GenericConfigData_Package.MODULE_RELATIVE_PATH) & To_Unbounded_String ("game/");
   MMO_GAME_MODULE_RELATIVE_PATH := Java_Image (GenericConfigData_Package.GAME_MODULE_RELATIVE_PATH) & To_Unbounded_String ("mmog/");
   FREE_MMO_GAME_MODULE_RELATIVE_PATH := To_Unbounded_String ("free/");

end org.allbinary.input.automation.module.generic_Id.GenericConfigData_Package;


