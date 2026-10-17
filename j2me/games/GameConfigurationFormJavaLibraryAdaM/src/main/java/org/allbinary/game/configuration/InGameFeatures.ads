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
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package; use org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package;
with org.allbinary.game.configuration.feature.InGameFeatureChoiceGroups_Package; use org.allbinary.game.configuration.feature.InGameFeatureChoiceGroups_Package;
with org.allbinary.game.configuration.feature.SensorFeatureFactory_Package; use org.allbinary.game.configuration.feature.SensorFeatureFactory_Package;
with org.allbinary.game.configuration.feature.TouchFeatureFactory_Package; use org.allbinary.game.configuration.feature.TouchFeatureFactory_Package;
with org.allbinary.init.Init_Package; use org.allbinary.init.Init_Package;
with org.allbinary.input.gyro.OrientationData_Package; use org.allbinary.input.gyro.OrientationData_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.game.configuration.InGameFeatures_Package is

   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package GameFeatureChoiceGroups_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package;
   package InGameFeatureChoiceGroups_Package renames Standard.org.allbinary.game.configuration.feature.InGameFeatureChoiceGroups_Package;
   package SensorFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.SensorFeatureFactory_Package;
   package TouchFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.TouchFeatureFactory_Package;
   package Init_Package renames Standard.org.allbinary.init.Init_Package;
   package OrientationData_Package renames Standard.org.allbinary.input.gyro.OrientationData_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type InGameFeatures is tagged;
   type InGameFeatures_Access is access all InGameFeatures'Class;
   type InGameFeatures_Access_Array is array (Natural range <>) of InGameFeatures_Access;
   type InGameFeatures_Access_Array_Access is access all InGameFeatures_Access_Array;

   type InGameFeatures is new Init with null record;

   procedure Initialize (This : in out InGameFeatures'Class);
   function Create return InGameFeatures_Access;
   procedure init (This : in out InGameFeatures);
   procedure addToInGameMenu (This : in out InGameFeatures);
   function isAny (This : in out InGameFeatures) return Boolean;

end org.allbinary.game.configuration.InGameFeatures_Package;


