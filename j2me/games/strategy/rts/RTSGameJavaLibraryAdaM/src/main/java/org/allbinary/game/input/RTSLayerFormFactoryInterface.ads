-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
limited with org.allbinary.game.input.RTSLayerFormFactoryInterface_Package;
package org.allbinary.game.input.RTSLayerFormFactoryInterface_Package_References is
   type RTSLayerFormFactoryInterface_Access is access all org.allbinary.game.input.RTSLayerFormFactoryInterface_Package.RTSLayerFormFactoryInterface'Class;
   type RTSLayerFormFactoryInterface_Access_Array is array (Natural range <>) of RTSLayerFormFactoryInterface_Access;
   type RTSLayerFormFactoryInterface_Access_Array_Access is access all RTSLayerFormFactoryInterface_Access_Array;
   type RTSLayerFormFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of RTSLayerFormFactoryInterface_Access_Array_Access;
   type RTSLayerFormFactoryInterface_Access_Array_Access_Array_Access is access all RTSLayerFormFactoryInterface_Access_Array_Access_Array;
   type RTSLayerFormFactoryInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RTSLayerFormFactoryInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : RTSLayerFormFactoryInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RTSLayerFormFactoryInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RTSLayerFormFactoryInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RTSLayerFormFactoryInterface_Access_Array_Access is (if Value /= null and then Value.all in RTSLayerFormFactoryInterface_Access_Array_Object'Class then RTSLayerFormFactoryInterface_Access_Array_Object'Class (Value.all).Value else null);
   type RTSLayerFormFactoryInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RTSLayerFormFactoryInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RTSLayerFormFactoryInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RTSLayerFormFactoryInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RTSLayerFormFactoryInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RTSLayerFormFactoryInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RTSLayerFormFactoryInterface_Access_Array_Access_Array_Object'Class then RTSLayerFormFactoryInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.RTSLayerFormFactoryInterface_Package_References;

with org.allbinary.game.input.RTSLayerFormFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSLayer_Package_References;
limited with org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package_References;

package org.allbinary.game.input.RTSLayerFormFactoryInterface_Package is

   package RTSLayer_Package renames Standard.org.allbinary.game.layer.RTSLayer_Package;
   package ScrollSelectionForm_Package renames Standard.org.allbinary.graphics.form.ScrollSelectionForm_Package;
   package Reference_Types is
   subtype RTSLayer_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access;
   use type RTSLayer_Access;
   subtype RTSLayer_Access_Array is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array;
   use type RTSLayer_Access_Array;
   subtype RTSLayer_Access_Array_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access;
   use type RTSLayer_Access_Array_Access;
   subtype RTSLayer_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access_Array;
   use type RTSLayer_Access_Array_Access_Array;
   subtype RTSLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access_Array_Access;
   use type RTSLayer_Access_Array_Access_Array_Access;
   subtype ScrollSelectionForm_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access;
   use type ScrollSelectionForm_Access;
   subtype ScrollSelectionForm_Access_Array is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array;
   use type ScrollSelectionForm_Access_Array;
   subtype ScrollSelectionForm_Access_Array_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access;
   use type ScrollSelectionForm_Access_Array_Access;
   subtype ScrollSelectionForm_Access_Array_Access_Array is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access_Array;
   use type ScrollSelectionForm_Access_Array_Access_Array;
   subtype ScrollSelectionForm_Access_Array_Access_Array_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access_Array_Access;
   use type ScrollSelectionForm_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type RTSLayerFormFactoryInterface is interface;
   subtype RTSLayerFormFactoryInterface_Access is org.allbinary.game.input.RTSLayerFormFactoryInterface_Package_References.RTSLayerFormFactoryInterface_Access;
   function "=" (Left, Right : RTSLayerFormFactoryInterface_Access) return Boolean renames org.allbinary.game.input.RTSLayerFormFactoryInterface_Package_References."=";
   subtype RTSLayerFormFactoryInterface_Access_Array is org.allbinary.game.input.RTSLayerFormFactoryInterface_Package_References.RTSLayerFormFactoryInterface_Access_Array;
   function "=" (Left, Right : RTSLayerFormFactoryInterface_Access_Array) return Boolean renames org.allbinary.game.input.RTSLayerFormFactoryInterface_Package_References."=";
   subtype RTSLayerFormFactoryInterface_Access_Array_Access is org.allbinary.game.input.RTSLayerFormFactoryInterface_Package_References.RTSLayerFormFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : RTSLayerFormFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.game.input.RTSLayerFormFactoryInterface_Package_References."=";
   function Java_Box (Value : RTSLayerFormFactoryInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.RTSLayerFormFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_RTSLayerFormFactoryInterface_Access_Array (Value : access Java_Object'Class) return RTSLayerFormFactoryInterface_Access_Array_Access renames org.allbinary.game.input.RTSLayerFormFactoryInterface_Package_References.Java_Unbox_RTSLayerFormFactoryInterface_Access_Array;
   subtype RTSLayerFormFactoryInterface_Access_Array_Access_Array is org.allbinary.game.input.RTSLayerFormFactoryInterface_Package_References.RTSLayerFormFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : RTSLayerFormFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.RTSLayerFormFactoryInterface_Package_References."=";
   subtype RTSLayerFormFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.RTSLayerFormFactoryInterface_Package_References.RTSLayerFormFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSLayerFormFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.RTSLayerFormFactoryInterface_Package_References."=";
   function Java_Box (Value : RTSLayerFormFactoryInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.RTSLayerFormFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_RTSLayerFormFactoryInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return RTSLayerFormFactoryInterface_Access_Array_Access_Array_Access renames org.allbinary.game.input.RTSLayerFormFactoryInterface_Package_References.Java_Unbox_RTSLayerFormFactoryInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_RTSLayerFormFactoryInterface (Value : RTSLayerFormFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInstance (This : in out RTSLayerFormFactoryInterface; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) return ScrollSelectionForm_Access is abstract;
   procedure getInstance (This : in out RTSLayerFormFactoryInterface; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) is abstract;

end org.allbinary.game.input.RTSLayerFormFactoryInterface_Package;


