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
with org.allbinary.ai.ArtificialIntelligence_Package; use org.allbinary.ai.ArtificialIntelligence_Package;
with org.allbinary.ai.ArtificialIntelligenceInterface_Package; use org.allbinary.ai.ArtificialIntelligenceInterface_Package;
with org.allbinary.game.collision.CollidableBaseBehavior_Package; use org.allbinary.game.collision.CollidableBaseBehavior_Package;
with org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package; use org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package;
with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package; use org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
with org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package; use org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.RectangleFactory_Package; use org.allbinary.graphics.RectangleFactory_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.game.layer.AllBinaryGameLayer_Package; use org.allbinary.game.layer.AllBinaryGameLayer_Package;

package org.allbinary.game.layer.CollidableCompositeLayer_Package is

   package ArtificialIntelligence_Package renames Standard.org.allbinary.ai.ArtificialIntelligence_Package;
   package ArtificialIntelligenceInterface_Package renames Standard.org.allbinary.ai.ArtificialIntelligenceInterface_Package;
   package CollidableBaseBehavior_Package renames Standard.org.allbinary.game.collision.CollidableBaseBehavior_Package;
   package CollidableBaseBehaviorFactory_Package renames Standard.org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package;
   package CollidableInterfaceCompositeInterface_Package renames Standard.org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
   package CollidableNeverCollideBehaviorFactory_Package renames Standard.org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package RectangleFactory_Package renames Standard.org.allbinary.graphics.RectangleFactory_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package ViewPositionBase_Package renames Standard.org.allbinary.view.ViewPositionBase_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;

   type CollidableCompositeLayer is tagged;
   type CollidableCompositeLayer_Access is access all CollidableCompositeLayer'Class;
   type CollidableCompositeLayer_Access_Array is array (Natural range <>) of CollidableCompositeLayer_Access;
   type CollidableCompositeLayer_Access_Array_Access is access all CollidableCompositeLayer_Access_Array;

   type CollidableCompositeLayer is new AllBinaryGameLayer and CollidableInterfaceCompositeInterface with record
      collidableInferface : CollidableBaseBehavior_Access;
   end record;
   NULL_COLLIDABLE_COMPOSITE_LAYER : Java_Object_Access;

   procedure Initialize (This : in out CollidableCompositeLayer'Class; name : Unbounded_String; layerInfo_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class; collidableBaseBehaviorFactory_Param : access CollidableBaseBehaviorFactory_Package.CollidableBaseBehaviorFactory'Class);
   function Create (name : Unbounded_String; layerInfo_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class; collidableBaseBehaviorFactory_Param : access CollidableBaseBehaviorFactory_Package.CollidableBaseBehaviorFactory'Class) return CollidableCompositeLayer_Access;
   function getNullInstance return CollidableCompositeLayer_Access;
   function getArtificialIntelligenceInterface (This : in out CollidableCompositeLayer) return ArtificialIntelligenceInterface_Access;
   function getCollidableInferface (This : in out CollidableCompositeLayer) return CollidableBaseBehavior_Access;
   procedure setCollidableInferface (This : in out CollidableCompositeLayer; collidableInferface_Param : access CollidableBaseBehavior_Package.CollidableBaseBehavior'Class);
   function implmentsCollidableInterface (This : in out CollidableCompositeLayer) return Boolean;
   procedure toStringAppend (This : in out CollidableCompositeLayer; stringBuffer_Param : access StringMaker_Package.StringMaker'Class);
   function toString (This : in out CollidableCompositeLayer) return Unbounded_String;

end org.allbinary.game.layer.CollidableCompositeLayer_Package;


