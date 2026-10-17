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
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.game.resource.ResourceRelativeRelationshipFactoryInterface_Package; use org.allbinary.game.resource.ResourceRelativeRelationshipFactoryInterface_Package;

package org.allbinary.game.resource.ResourceRelativeRelationshipFactory_Package is

   package RelativeRelationship_Package renames Standard.org.allbinary.graphics.RelativeRelationship_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;

   type ResourceRelativeRelationshipFactory is tagged;
   type ResourceRelativeRelationshipFactory_Access is access all ResourceRelativeRelationshipFactory'Class;
   type ResourceRelativeRelationshipFactory_Access_Array is array (Natural range <>) of ResourceRelativeRelationshipFactory_Access;
   type ResourceRelativeRelationshipFactory_Access_Array_Access is access all ResourceRelativeRelationshipFactory_Access_Array;

   type ResourceRelativeRelationshipFactory is new ResourceRelativeRelationshipFactoryInterface with record
      basicArrayListUtil : BasicArrayListUtil_Access;
      hashtable : ABHashtable_Access;
      initialized : Boolean;
   end record;

   procedure Initialize (This : in out ResourceRelativeRelationshipFactory'Class);
   function Create return ResourceRelativeRelationshipFactory_Access;
   procedure init (This : in out ResourceRelativeRelationshipFactory; level : Integer);
   function getResourceRelativeRelationshipList (This : in out ResourceRelativeRelationshipFactory; resource : Unbounded_String) return BasicArrayList_Access;
   procedure getResourceRelativeRelationshipList (This : in out ResourceRelativeRelationshipFactory; resource : Unbounded_String);
   procedure addResourceRelativeRelationship (This : in out ResourceRelativeRelationshipFactory; resource : Unbounded_String; hardPoint_Param : access RelativeRelationship_Package.RelativeRelationship'Class);
   function isLoadingLevel (This : in out ResourceRelativeRelationshipFactory; level : Integer) return Boolean;
   procedure isLoadingLevel (This : in out ResourceRelativeRelationshipFactory; level : Integer);
   function isFeature (This : in out ResourceRelativeRelationshipFactory) return Boolean;
   procedure setInitialized (This : in out ResourceRelativeRelationshipFactory; initialized : Boolean);
   function isInitialized (This : in out ResourceRelativeRelationshipFactory) return Boolean;

end org.allbinary.game.resource.ResourceRelativeRelationshipFactory_Package;


