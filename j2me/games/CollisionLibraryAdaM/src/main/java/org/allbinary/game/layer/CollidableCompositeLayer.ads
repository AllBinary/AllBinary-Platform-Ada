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

limited with org.allbinary.game.layer.CollidableCompositeLayer_Package;
package org.allbinary.game.layer.CollidableCompositeLayer_Package_References is
   type CollidableCompositeLayer_Access is access all org.allbinary.game.layer.CollidableCompositeLayer_Package.CollidableCompositeLayer'Class;
   type CollidableCompositeLayer_Access_Array is array (Natural range <>) of CollidableCompositeLayer_Access;
   type CollidableCompositeLayer_Access_Array_Access is access all CollidableCompositeLayer_Access_Array;
   type CollidableCompositeLayer_Access_Array_Access_Array is array (Natural range <>) of CollidableCompositeLayer_Access_Array_Access;
   type CollidableCompositeLayer_Access_Array_Access_Array_Access is access all CollidableCompositeLayer_Access_Array_Access_Array;
end org.allbinary.game.layer.CollidableCompositeLayer_Package_References;

with org.allbinary.game.layer.CollidableCompositeLayer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.ai.ArtificialIntelligenceInterface_Package;
with org.allbinary.ai.ArtificialIntelligenceInterface_Package_References;
limited with org.allbinary.game.collision.CollidableBaseBehavior_Package;
with org.allbinary.game.collision.CollidableBaseBehavior_Package_References;
limited with org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package;
with org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package_References;
with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package; use org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
limited with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;
limited with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringMaker_Package_References;
limited with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.ViewPositionBase_Package_References;
with org.allbinary.game.layer.AllBinaryGameLayer_Package; use org.allbinary.game.layer.AllBinaryGameLayer_Package;

package org.allbinary.game.layer.CollidableCompositeLayer_Package is

   package ArtificialIntelligenceInterface_Package renames Standard.org.allbinary.ai.ArtificialIntelligenceInterface_Package;
   package CollidableBaseBehavior_Package renames Standard.org.allbinary.game.collision.CollidableBaseBehavior_Package;
   package CollidableBaseBehaviorFactory_Package renames Standard.org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package;
   package CollidableInterfaceCompositeInterface_Package renames Standard.org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package ViewPositionBase_Package renames Standard.org.allbinary.view.ViewPositionBase_Package;
   package Reference_Types is
   subtype ArtificialIntelligenceInterface_Access is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access;
   use type ArtificialIntelligenceInterface_Access;
   subtype ArtificialIntelligenceInterface_Access_Array is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access_Array;
   use type ArtificialIntelligenceInterface_Access_Array;
   subtype ArtificialIntelligenceInterface_Access_Array_Access is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access_Array_Access;
   use type ArtificialIntelligenceInterface_Access_Array_Access;
   subtype ArtificialIntelligenceInterface_Access_Array_Access_Array is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access_Array_Access_Array;
   use type ArtificialIntelligenceInterface_Access_Array_Access_Array;
   subtype ArtificialIntelligenceInterface_Access_Array_Access_Array_Access is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access_Array_Access_Array_Access;
   use type ArtificialIntelligenceInterface_Access_Array_Access_Array_Access;
   subtype CollidableBaseBehavior_Access is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access;
   use type CollidableBaseBehavior_Access;
   subtype CollidableBaseBehavior_Access_Array is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array;
   use type CollidableBaseBehavior_Access_Array;
   subtype CollidableBaseBehavior_Access_Array_Access is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array_Access;
   use type CollidableBaseBehavior_Access_Array_Access;
   subtype CollidableBaseBehavior_Access_Array_Access_Array is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array_Access_Array;
   use type CollidableBaseBehavior_Access_Array_Access_Array;
   subtype CollidableBaseBehavior_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array_Access_Array_Access;
   use type CollidableBaseBehavior_Access_Array_Access_Array_Access;
   subtype CollidableBaseBehaviorFactory_Access is org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package_References.CollidableBaseBehaviorFactory_Access;
   use type CollidableBaseBehaviorFactory_Access;
   subtype CollidableBaseBehaviorFactory_Access_Array is org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package_References.CollidableBaseBehaviorFactory_Access_Array;
   use type CollidableBaseBehaviorFactory_Access_Array;
   subtype CollidableBaseBehaviorFactory_Access_Array_Access is org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package_References.CollidableBaseBehaviorFactory_Access_Array_Access;
   use type CollidableBaseBehaviorFactory_Access_Array_Access;
   subtype CollidableBaseBehaviorFactory_Access_Array_Access_Array is org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package_References.CollidableBaseBehaviorFactory_Access_Array_Access_Array;
   use type CollidableBaseBehaviorFactory_Access_Array_Access_Array;
   subtype CollidableBaseBehaviorFactory_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package_References.CollidableBaseBehaviorFactory_Access_Array_Access_Array_Access;
   use type CollidableBaseBehaviorFactory_Access_Array_Access_Array_Access;
   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
   subtype StringMaker_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access;
   use type StringMaker_Access;
   subtype StringMaker_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array;
   use type StringMaker_Access_Array;
   subtype StringMaker_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access;
   use type StringMaker_Access_Array_Access;
   subtype StringMaker_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array;
   use type StringMaker_Access_Array_Access_Array;
   subtype StringMaker_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array_Access;
   use type StringMaker_Access_Array_Access_Array_Access;
   subtype ViewPositionBase_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access;
   use type ViewPositionBase_Access;
   subtype ViewPositionBase_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array;
   use type ViewPositionBase_Access_Array;
   subtype ViewPositionBase_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access;
   use type ViewPositionBase_Access_Array_Access;
   subtype ViewPositionBase_Access_Array_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array;
   use type ViewPositionBase_Access_Array_Access_Array;
   subtype ViewPositionBase_Access_Array_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array_Access;
   use type ViewPositionBase_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CollidableCompositeLayer_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access;
   function "=" (Left, Right : CollidableCompositeLayer_Access) return Boolean renames org.allbinary.game.layer.CollidableCompositeLayer_Package_References."=";
   subtype CollidableCompositeLayer_Access_Array is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array;
   function "=" (Left, Right : CollidableCompositeLayer_Access_Array) return Boolean renames org.allbinary.game.layer.CollidableCompositeLayer_Package_References."=";
   subtype CollidableCompositeLayer_Access_Array_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access;
   function "=" (Left, Right : CollidableCompositeLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.CollidableCompositeLayer_Package_References."=";
   subtype CollidableCompositeLayer_Access_Array_Access_Array is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableCompositeLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.CollidableCompositeLayer_Package_References."=";
   subtype CollidableCompositeLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableCompositeLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.CollidableCompositeLayer_Package_References."=";

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


