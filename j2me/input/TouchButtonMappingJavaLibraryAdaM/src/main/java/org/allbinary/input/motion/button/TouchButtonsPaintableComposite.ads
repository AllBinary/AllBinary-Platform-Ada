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

with AllBinary_Java;
limited with org.allbinary.input.motion.button.TouchButtonsPaintableComposite_Package;
package org.allbinary.input.motion.button.TouchButtonsPaintableComposite_Package_References is
   type TouchButtonsPaintableComposite_Access is access all org.allbinary.input.motion.button.TouchButtonsPaintableComposite_Package.TouchButtonsPaintableComposite'Class;
   type TouchButtonsPaintableComposite_Access_Array is array (Natural range <>) of TouchButtonsPaintableComposite_Access;
   type TouchButtonsPaintableComposite_Access_Array_Access is access all TouchButtonsPaintableComposite_Access_Array;
   type TouchButtonsPaintableComposite_Access_Array_Access_Array is array (Natural range <>) of TouchButtonsPaintableComposite_Access_Array_Access;
   type TouchButtonsPaintableComposite_Access_Array_Access_Array_Access is access all TouchButtonsPaintableComposite_Access_Array_Access_Array;
   type TouchButtonsPaintableComposite_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchButtonsPaintableComposite_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchButtonsPaintableComposite_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchButtonsPaintableComposite_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchButtonsPaintableComposite_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchButtonsPaintableComposite_Access_Array_Access is (if Value /= null and then Value.all in TouchButtonsPaintableComposite_Access_Array_Object'Class then TouchButtonsPaintableComposite_Access_Array_Object'Class (Value.all).Value else null);
   type TouchButtonsPaintableComposite_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchButtonsPaintableComposite_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchButtonsPaintableComposite_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchButtonsPaintableComposite_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchButtonsPaintableComposite_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchButtonsPaintableComposite_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TouchButtonsPaintableComposite_Access_Array_Access_Array_Object'Class then TouchButtonsPaintableComposite_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.button.TouchButtonsPaintableComposite_Package_References;

with org.allbinary.input.motion.button.TouchButtonsPaintableComposite_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
with org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References;
with org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package; use org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package;
limited with org.allbinary.game.input.mapping.InputMappingInterface_Package;
with org.allbinary.game.input.mapping.InputMappingInterface_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.paint.ProcessPaintable_Package; use org.allbinary.graphics.paint.ProcessPaintable_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
limited with org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package;
with org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References;

package org.allbinary.input.motion.button.TouchButtonsPaintableComposite_Package is

   package CompleteMotionGestureInputEvent_Package renames Standard.org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
   package CompleteMotionGestureInputEventListenerInterface_Package renames Standard.org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package;
   package InputMappingInterface_Package renames Standard.org.allbinary.game.input.mapping.InputMappingInterface_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ProcessPaintable_Package renames Standard.org.allbinary.graphics.paint.ProcessPaintable_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package Reference_Types is
   subtype CompleteMotionGestureInputEvent_Access is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access;
   use type CompleteMotionGestureInputEvent_Access;
   subtype CompleteMotionGestureInputEvent_Access_Array is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access_Array;
   use type CompleteMotionGestureInputEvent_Access_Array;
   subtype CompleteMotionGestureInputEvent_Access_Array_Access is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access_Array_Access;
   use type CompleteMotionGestureInputEvent_Access_Array_Access;
   subtype CompleteMotionGestureInputEvent_Access_Array_Access_Array is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access_Array_Access_Array;
   use type CompleteMotionGestureInputEvent_Access_Array_Access_Array;
   subtype CompleteMotionGestureInputEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access_Array_Access_Array_Access;
   use type CompleteMotionGestureInputEvent_Access_Array_Access_Array_Access;
   subtype InputMappingInterface_Access is org.allbinary.game.input.mapping.InputMappingInterface_Package_References.InputMappingInterface_Access;
   use type InputMappingInterface_Access;
   subtype InputMappingInterface_Access_Array is org.allbinary.game.input.mapping.InputMappingInterface_Package_References.InputMappingInterface_Access_Array;
   use type InputMappingInterface_Access_Array;
   subtype InputMappingInterface_Access_Array_Access is org.allbinary.game.input.mapping.InputMappingInterface_Package_References.InputMappingInterface_Access_Array_Access;
   use type InputMappingInterface_Access_Array_Access;
   subtype InputMappingInterface_Access_Array_Access_Array is org.allbinary.game.input.mapping.InputMappingInterface_Package_References.InputMappingInterface_Access_Array_Access_Array;
   use type InputMappingInterface_Access_Array_Access_Array;
   subtype InputMappingInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.InputMappingInterface_Package_References.InputMappingInterface_Access_Array_Access_Array_Access;
   use type InputMappingInterface_Access_Array_Access_Array_Access;
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   use type TimeDelayHelper_Access;
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   use type TimeDelayHelper_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access;
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   use type TimeDelayHelper_Access_Array_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access_Array_Access;
   subtype TouchButtonsMappingPaintable_Access is org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References.TouchButtonsMappingPaintable_Access;
   use type TouchButtonsMappingPaintable_Access;
   subtype TouchButtonsMappingPaintable_Access_Array is org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References.TouchButtonsMappingPaintable_Access_Array;
   use type TouchButtonsMappingPaintable_Access_Array;
   subtype TouchButtonsMappingPaintable_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References.TouchButtonsMappingPaintable_Access_Array_Access;
   use type TouchButtonsMappingPaintable_Access_Array_Access;
   subtype TouchButtonsMappingPaintable_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References.TouchButtonsMappingPaintable_Access_Array_Access_Array;
   use type TouchButtonsMappingPaintable_Access_Array_Access_Array;
   subtype TouchButtonsMappingPaintable_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References.TouchButtonsMappingPaintable_Access_Array_Access_Array_Access;
   use type TouchButtonsMappingPaintable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TouchButtonsPaintableComposite_Access is org.allbinary.input.motion.button.TouchButtonsPaintableComposite_Package_References.TouchButtonsPaintableComposite_Access;
   function "=" (Left, Right : TouchButtonsPaintableComposite_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonsPaintableComposite_Package_References."=";
   subtype TouchButtonsPaintableComposite_Access_Array is org.allbinary.input.motion.button.TouchButtonsPaintableComposite_Package_References.TouchButtonsPaintableComposite_Access_Array;
   function "=" (Left, Right : TouchButtonsPaintableComposite_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonsPaintableComposite_Package_References."=";
   subtype TouchButtonsPaintableComposite_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonsPaintableComposite_Package_References.TouchButtonsPaintableComposite_Access_Array_Access;
   function "=" (Left, Right : TouchButtonsPaintableComposite_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonsPaintableComposite_Package_References."=";
   function Java_Box (Value : TouchButtonsPaintableComposite_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.TouchButtonsPaintableComposite_Package_References.Java_Box;
   function Java_Unbox_TouchButtonsPaintableComposite_Access_Array (Value : access Java_Object'Class) return TouchButtonsPaintableComposite_Access_Array_Access renames org.allbinary.input.motion.button.TouchButtonsPaintableComposite_Package_References.Java_Unbox_TouchButtonsPaintableComposite_Access_Array;
   subtype TouchButtonsPaintableComposite_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonsPaintableComposite_Package_References.TouchButtonsPaintableComposite_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonsPaintableComposite_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonsPaintableComposite_Package_References."=";
   subtype TouchButtonsPaintableComposite_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonsPaintableComposite_Package_References.TouchButtonsPaintableComposite_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonsPaintableComposite_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonsPaintableComposite_Package_References."=";
   function Java_Box (Value : TouchButtonsPaintableComposite_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.TouchButtonsPaintableComposite_Package_References.Java_Box;
   function Java_Unbox_TouchButtonsPaintableComposite_Access_Array_Access_Array (Value : access Java_Object'Class) return TouchButtonsPaintableComposite_Access_Array_Access_Array_Access renames org.allbinary.input.motion.button.TouchButtonsPaintableComposite_Package_References.Java_Unbox_TouchButtonsPaintableComposite_Access_Array_Access_Array;

   type TouchButtonsPaintableComposite is new ProcessPaintable and CompleteMotionGestureInputEventListenerInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      inputMappingInterface : InputMappingInterface_Access;
      touchButtonsPaintable : TouchButtonsMappingPaintable_Access;
      timeHelper : TimeDelayHelper_Access;
      released : Boolean;
      METHOD_NAME : Unbounded_String;
      RELEASE : Unbounded_String;
      FAST_REPEAT : Unbounded_String;
      IGNORE : Unbounded_String;
   end record;

   procedure Initialize (This : in out TouchButtonsPaintableComposite'Class; inputMappingInterface_Param : access InputMappingInterface_Package.InputMappingInterface'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (inputMappingInterface_Param : access InputMappingInterface_Package.InputMappingInterface'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class) return TouchButtonsPaintableComposite_Access;
   procedure onEvent (This : in out TouchButtonsPaintableComposite; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onCompleteMotionGestureInputEvent (This : in out TouchButtonsPaintableComposite; completeMotionGestureInputEvent_Param : access CompleteMotionGestureInputEvent_Package.CompleteMotionGestureInputEvent'Class);
   procedure process (This : in out TouchButtonsPaintableComposite);

end org.allbinary.input.motion.button.TouchButtonsPaintableComposite_Package;


