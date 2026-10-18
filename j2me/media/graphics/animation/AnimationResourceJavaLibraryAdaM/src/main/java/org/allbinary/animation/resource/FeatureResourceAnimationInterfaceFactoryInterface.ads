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
with org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package; use org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package;
with org.allbinary.game.resource.RectangleResourceFactoryInterface_Package; use org.allbinary.game.resource.RectangleResourceFactoryInterface_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.animation.resource.ResourceAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.resource.ResourceAnimationInterfaceFactoryInterface_Package;

package org.allbinary.animation.resource.FeatureResourceAnimationInterfaceFactoryInterface_Package is

   package GameFeatureControlledInterface_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package;
   package RectangleResourceFactoryInterface_Package renames Standard.org.allbinary.game.resource.RectangleResourceFactoryInterface_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type FeatureResourceAnimationInterfaceFactoryInterface is interface and ResourceAnimationInterfaceFactoryInterface and RectangleResourceFactoryInterface and GameFeatureControlledInterface;
   type FeatureResourceAnimationInterfaceFactoryInterface_Access is access all FeatureResourceAnimationInterfaceFactoryInterface'Class;
   type FeatureResourceAnimationInterfaceFactoryInterface_Access_Array is array (Natural range <>) of FeatureResourceAnimationInterfaceFactoryInterface_Access;
   type FeatureResourceAnimationInterfaceFactoryInterface_Access_Array_Access is access all FeatureResourceAnimationInterfaceFactoryInterface_Access_Array;
   type FeatureResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of FeatureResourceAnimationInterfaceFactoryInterface_Access_Array_Access;
   type FeatureResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access is access all FeatureResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array;
   function getHashtable (This : in out FeatureResourceAnimationInterfaceFactoryInterface) return ABHashtable_Access is abstract;

end org.allbinary.animation.resource.FeatureResourceAnimationInterfaceFactoryInterface_Package;


