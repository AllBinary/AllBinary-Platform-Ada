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
with org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;
with org.allbinary.game.resource.ResourceLoadingLevelFactory_Package; use org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.RectangleFactory_Package; use org.allbinary.graphics.RectangleFactory_Package;
with org.allbinary.image.ImageCache_Package; use org.allbinary.image.ImageCache_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.animation.resource.FeatureResourceAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.resource.FeatureResourceAnimationInterfaceFactoryInterface_Package;

package org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package is

   package BasicAnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package;
   package NullAnimationFactory_Package renames Standard.org.allbinary.animation.NullAnimationFactory_Package;
   package ResourceLoadingLevelFactory_Package renames Standard.org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package RectangleFactory_Package renames Standard.org.allbinary.graphics.RectangleFactory_Package;
   package ImageCache_Package renames Standard.org.allbinary.image.ImageCache_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type BaseResourceAnimationInterfaceFactoryInterfaceFactory is tagged;
   type BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access is access all BaseResourceAnimationInterfaceFactoryInterfaceFactory'Class;
   type BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array is array (Natural range <>) of BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access;
   type BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access is access all BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array;

   type BaseResourceAnimationInterfaceFactoryInterfaceFactory is new FeatureResourceAnimationInterfaceFactoryInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      hashtable : ABHashtable_Access;
      rectangleHashtable : ABHashtable_Access;
      rectangleArrayOfArraysHashtable : ABHashtable_Access;
      name : Unbounded_String;
      initialized : Boolean;
   end record;

   procedure Initialize (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory'Class; name : Unbounded_String; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; rectangleHashtable_Param : access ABHashtable_Package.ABHashtable'Class; rectangleArrayHashtable_Param : access ABHashtable_Package.ABHashtable'Class);
   function Create (name : Unbounded_String; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; rectangleHashtable_Param : access ABHashtable_Package.ABHashtable'Class; rectangleArrayHashtable_Param : access ABHashtable_Package.ABHashtable'Class) return BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access;
   function getName (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory) return Unbounded_String;
   procedure init (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory; level : Integer);
   procedure initImageCache (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory; imageCache_Param : access ImageCache_Package.ImageCache'Class; level : Integer);
   procedure add (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String; animationInterfaceFactoryInterface_Param : access BasicAnimationInterfaceFactoryInterface_Package.BasicAnimationInterfaceFactoryInterface'Class);
   function getBasicAnimationInterfaceFactoryInstance (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String) return BasicAnimationInterfaceFactoryInterface_Access;
   procedure getBasicAnimationInterfaceFactoryInstance (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String);
   function getRectangle (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String) return Rectangle_Access;
   procedure getRectangle (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String);
   procedure addRectangle (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String; rectangle_Param : access Rectangle_Package.Rectangle'Class);
   function getRectangleArrayOfArrays (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String) return Rectangle_Access_Array_Access_Array_Access;
   procedure getRectangleArrayOfArrays (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String);
   procedure addRectangleArrayOfArrays (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String; rectangleArrayOfArrays : Rectangle_Access_Array_Access_Array_Access);
   function isFeature (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory) return Boolean;
   function isLoadingLevel (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory; level : Integer) return Boolean;
   procedure isLoadingLevel (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory; level : Integer);
   function toString (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory) return Unbounded_String;
   function getHashtable (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory) return ABHashtable_Access;
   function getRectangleHashtable (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory) return ABHashtable_Access;
   function getRectangleArrayOfArraysHashtable (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory) return ABHashtable_Access;
   procedure setInitialized (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory; initialized : Boolean);
   function isInitialized (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory) return Boolean;

end org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package;


