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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with org.allbinary.game.resource.ResourceInitialization_Package; use org.allbinary.game.resource.ResourceInitialization_Package;
with org.allbinary.game.resource.ResourceLoadingLevelFactory_Package; use org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.init.BaseGameInitialization_Package; use org.allbinary.game.init.BaseGameInitialization_Package;

package org.allbinary.game.init.CommonGameInitialization_Package is

   package ResourceInitialization_Package renames Standard.org.allbinary.game.resource.ResourceInitialization_Package;
   package ResourceLoadingLevelFactory_Package renames Standard.org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;
   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package ProgressCanvas_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
   package ProgressCanvasFactory_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type CommonGameInitialization is tagged;
   type CommonGameInitialization_Access is access all CommonGameInitialization'Class;
   type CommonGameInitialization_Access_Array is array (Natural range <>) of CommonGameInitialization_Access;
   type CommonGameInitialization_Access_Array_Access is access all CommonGameInitialization_Access_Array;

   type CommonGameInitialization is new BaseGameInitialization with record
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out CommonGameInitialization'Class; resourceInitializationArray : ResourceInitialization_Access_Array_Access; portion : Integer);
   function Create (resourceInitializationArray : ResourceInitialization_Access_Array_Access; portion : Integer) return CommonGameInitialization_Access;
   procedure init (This : in out CommonGameInitialization; abeClientInformation : AbeClientInformationInterface_Access; commandListener : CommandListener_Access; level : Integer);
   procedure initGame (This : in out CommonGameInitialization);

end org.allbinary.game.init.CommonGameInitialization_Package;


