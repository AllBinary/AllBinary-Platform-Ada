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
with org.allbinary.graphics.RelativeRelationship_Package; use org.allbinary.graphics.RelativeRelationship_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.game.part.PartInterface_Package; use org.allbinary.game.part.PartInterface_Package;

package org.allbinary.game.part.PartFactoryInterface_Package is

   package RelativeRelationship_Package renames Standard.org.allbinary.graphics.RelativeRelationship_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;

   type PartFactoryInterface is interface;
   type PartFactoryInterface_Access is access all PartFactoryInterface'Class;
   type PartFactoryInterface_Access_Array is array (Natural range <>) of PartFactoryInterface_Access;
   type PartFactoryInterface_Access_Array_Access is access all PartFactoryInterface_Access_Array;
   type PartFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of PartFactoryInterface_Access_Array_Access;
   type PartFactoryInterface_Access_Array_Access_Array_Access is access all PartFactoryInterface_Access_Array_Access_Array;
   function getInstance (This : in out PartFactoryInterface; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class) return PartInterface_Access is abstract;

end org.allbinary.game.part.PartFactoryInterface_Package;


