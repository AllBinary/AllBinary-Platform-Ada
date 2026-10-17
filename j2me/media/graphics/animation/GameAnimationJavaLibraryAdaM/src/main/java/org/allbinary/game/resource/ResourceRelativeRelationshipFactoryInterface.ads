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
with org.allbinary.graphics.RelativeRelationship_Package; use org.allbinary.graphics.RelativeRelationship_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.game.resource.ResourceRelativeRelationshipFactoryInterface_Package is

   package GameFeatureControlledInterface_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package;
   package RelativeRelationship_Package renames Standard.org.allbinary.graphics.RelativeRelationship_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type ResourceRelativeRelationshipFactoryInterface is interface and GameFeatureControlledInterface;
   type ResourceRelativeRelationshipFactoryInterface_Access is access all ResourceRelativeRelationshipFactoryInterface'Class;
   type ResourceRelativeRelationshipFactoryInterface_Access_Array is array (Natural range <>) of ResourceRelativeRelationshipFactoryInterface_Access;
   type ResourceRelativeRelationshipFactoryInterface_Access_Array_Access is access all ResourceRelativeRelationshipFactoryInterface_Access_Array;
   function getResourceRelativeRelationshipList (This : in out ResourceRelativeRelationshipFactoryInterface; resource : Unbounded_String) return BasicArrayList_Access is abstract;
   procedure addResourceRelativeRelationship (This : in out ResourceRelativeRelationshipFactoryInterface; resource : Unbounded_String; relativeRelationship_Param : access RelativeRelationship'Class) is abstract;

end org.allbinary.game.resource.ResourceRelativeRelationshipFactoryInterface_Package;


