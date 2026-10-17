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

   package ArtificialIntelligence_Package renames org.allbinary.ai.ArtificialIntelligence_Package;
   package ArtificialIntelligenceInterface_Package renames org.allbinary.ai.ArtificialIntelligenceInterface_Package;
   package CollidableBaseBehavior_Package renames org.allbinary.game.collision.CollidableBaseBehavior_Package;
   package CollidableBaseBehaviorFactory_Package renames org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package;
   package CollidableInterfaceCompositeInterface_Package renames org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
   package CollidableNeverCollideBehaviorFactory_Package renames org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package;
   package Rectangle_Package renames org.allbinary.graphics.Rectangle_Package;
   package RectangleFactory_Package renames org.allbinary.graphics.RectangleFactory_Package;
   package ForcedLogUtil_Package renames org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package ViewPositionBase_Package renames org.allbinary.view.ViewPositionBase_Package;
   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;

   type CollidableCompositeLayer is tagged;
   type CollidableCompositeLayer_Access is access all CollidableCompositeLayer'Class;
   type CollidableCompositeLayer_Access_Array is array (Natural range <>) of CollidableCompositeLayer_Access;
   type CollidableCompositeLayer_Access_Array_Access is access all CollidableCompositeLayer_Access_Array;

   type CollidableCompositeLayer is new AllBinaryGameLayer and CollidableInterfaceCompositeInterface with record
      collidableInferface : CollidableBaseBehavior_Access;
   end record;
   NULL_COLLIDABLE_COMPOSITE_LAYER : Java_Object_Access;

   procedure Initialize (This : in out CollidableCompositeLayer'Class; name : Unbounded_String; layerInfo : Rectangle_Access; viewPosition : ViewPositionBase_Access; collidableBaseBehaviorFactory : CollidableBaseBehaviorFactory_Access);
   function Create (name : Unbounded_String; layerInfo : Rectangle_Access; viewPosition : ViewPositionBase_Access; collidableBaseBehaviorFactory : CollidableBaseBehaviorFactory_Access) return CollidableCompositeLayer_Access;
   function getNullInstance return CollidableCompositeLayer_Access;
   procedure getNullInstance;
   function getArtificialIntelligenceInterface (This : in out CollidableCompositeLayer) return ArtificialIntelligenceInterface_Access;
   procedure getArtificialIntelligenceInterface (This : in out CollidableCompositeLayer);
   function getCollidableInferface (This : in out CollidableCompositeLayer) return CollidableBaseBehavior_Access;
   procedure getCollidableInferface (This : in out CollidableCompositeLayer);
   procedure setCollidableInferface (This : in out CollidableCompositeLayer; collidableInferface : CollidableBaseBehavior_Access);
   function implmentsCollidableInterface (This : in out CollidableCompositeLayer) return Boolean;
   procedure implmentsCollidableInterface (This : in out CollidableCompositeLayer);
   procedure toStringAppend (This : in out CollidableCompositeLayer; stringBuffer : StringMaker_Access);
   function toString (This : in out CollidableCompositeLayer) return Unbounded_String;
   procedure toString (This : in out CollidableCompositeLayer);

end org.allbinary.game.layer.CollidableCompositeLayer_Package;


