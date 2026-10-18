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
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.game.resource.FeaturedResourceFactory_Package; use org.allbinary.game.resource.FeaturedResourceFactory_Package;

package org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;

   type FeaturedResourceRelativeRelationshipFactory is tagged;
   type FeaturedResourceRelativeRelationshipFactory_Access is access all FeaturedResourceRelativeRelationshipFactory'Class;
   type FeaturedResourceRelativeRelationshipFactory_Access_Array is array (Natural range <>) of FeaturedResourceRelativeRelationshipFactory_Access;
   type FeaturedResourceRelativeRelationshipFactory_Access_Array_Access is access all FeaturedResourceRelativeRelationshipFactory_Access_Array;
   type FeaturedResourceRelativeRelationshipFactory_Access_Array_Access_Array is array (Natural range <>) of FeaturedResourceRelativeRelationshipFactory_Access_Array_Access;
   type FeaturedResourceRelativeRelationshipFactory_Access_Array_Access_Array_Access is access all FeaturedResourceRelativeRelationshipFactory_Access_Array_Access_Array;

   type FeaturedResourceRelativeRelationshipFactory is new FeaturedResourceFactory with record
      basicArrayListUtil : BasicArrayListUtil_Access;
   end record;
   INSTANCE : FeaturedResourceRelativeRelationshipFactory_Access;

   procedure Initialize (This : in out FeaturedResourceRelativeRelationshipFactory'Class);
   function Create return FeaturedResourceRelativeRelationshipFactory_Access;
   function getInstance return FeaturedResourceRelativeRelationshipFactory_Access;
   function getRelativeRelationshipList (This : in out FeaturedResourceRelativeRelationshipFactory; resource : Unbounded_String; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return BasicArrayList_Access;
   procedure getRelativeRelationshipList (This : in out FeaturedResourceRelativeRelationshipFactory; resource : Unbounded_String; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   function duplicate (This : in out FeaturedResourceRelativeRelationshipFactory; list_Param : access BasicArrayList_Package.BasicArrayList'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return BasicArrayList_Access;
   procedure duplicate (This : in out FeaturedResourceRelativeRelationshipFactory; list_Param : access BasicArrayList_Package.BasicArrayList'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);

end org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package;


