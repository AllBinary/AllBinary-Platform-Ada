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
limited with org.allbinary.game.input.RTSLayerFormFactory_Package;
package org.allbinary.game.input.RTSLayerFormFactory_Package_References is
   type RTSLayerFormFactory_Access is access all org.allbinary.game.input.RTSLayerFormFactory_Package.RTSLayerFormFactory'Class;
   type RTSLayerFormFactory_Access_Array is array (Natural range <>) of RTSLayerFormFactory_Access;
   type RTSLayerFormFactory_Access_Array_Access is access all RTSLayerFormFactory_Access_Array;
   type RTSLayerFormFactory_Access_Array_Access_Array is array (Natural range <>) of RTSLayerFormFactory_Access_Array_Access;
   type RTSLayerFormFactory_Access_Array_Access_Array_Access is access all RTSLayerFormFactory_Access_Array_Access_Array;
   type RTSLayerFormFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RTSLayerFormFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : RTSLayerFormFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RTSLayerFormFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RTSLayerFormFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RTSLayerFormFactory_Access_Array_Access is (if Value /= null and then Value.all in RTSLayerFormFactory_Access_Array_Object'Class then RTSLayerFormFactory_Access_Array_Object'Class (Value.all).Value else null);
   type RTSLayerFormFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RTSLayerFormFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RTSLayerFormFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RTSLayerFormFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RTSLayerFormFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RTSLayerFormFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RTSLayerFormFactory_Access_Array_Access_Array_Object'Class then RTSLayerFormFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.RTSLayerFormFactory_Package_References;

with org.allbinary.game.input.RTSLayerFormFactory_Package_References;
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
with org.allbinary.game.input.RTSLayerFormFactoryInterface_Package; use org.allbinary.game.input.RTSLayerFormFactoryInterface_Package;

package org.allbinary.game.input.RTSLayerFormFactory_Package is

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


   subtype RTSLayerFormFactory_Access is org.allbinary.game.input.RTSLayerFormFactory_Package_References.RTSLayerFormFactory_Access;
   function "=" (Left, Right : RTSLayerFormFactory_Access) return Boolean renames org.allbinary.game.input.RTSLayerFormFactory_Package_References."=";
   subtype RTSLayerFormFactory_Access_Array is org.allbinary.game.input.RTSLayerFormFactory_Package_References.RTSLayerFormFactory_Access_Array;
   function "=" (Left, Right : RTSLayerFormFactory_Access_Array) return Boolean renames org.allbinary.game.input.RTSLayerFormFactory_Package_References."=";
   subtype RTSLayerFormFactory_Access_Array_Access is org.allbinary.game.input.RTSLayerFormFactory_Package_References.RTSLayerFormFactory_Access_Array_Access;
   function "=" (Left, Right : RTSLayerFormFactory_Access_Array_Access) return Boolean renames org.allbinary.game.input.RTSLayerFormFactory_Package_References."=";
   function Java_Box (Value : RTSLayerFormFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.RTSLayerFormFactory_Package_References.Java_Box;
   function Java_Unbox_RTSLayerFormFactory_Access_Array (Value : access Java_Object'Class) return RTSLayerFormFactory_Access_Array_Access renames org.allbinary.game.input.RTSLayerFormFactory_Package_References.Java_Unbox_RTSLayerFormFactory_Access_Array;
   subtype RTSLayerFormFactory_Access_Array_Access_Array is org.allbinary.game.input.RTSLayerFormFactory_Package_References.RTSLayerFormFactory_Access_Array_Access_Array;
   function "=" (Left, Right : RTSLayerFormFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.RTSLayerFormFactory_Package_References."=";
   subtype RTSLayerFormFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.RTSLayerFormFactory_Package_References.RTSLayerFormFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSLayerFormFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.RTSLayerFormFactory_Package_References."=";
   function Java_Box (Value : RTSLayerFormFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.RTSLayerFormFactory_Package_References.Java_Box;
   function Java_Unbox_RTSLayerFormFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return RTSLayerFormFactory_Access_Array_Access_Array_Access renames org.allbinary.game.input.RTSLayerFormFactory_Package_References.Java_Unbox_RTSLayerFormFactory_Access_Array_Access_Array;

   type RTSLayerFormFactory is new Java_Object and RTSLayerFormFactoryInterface with null record;

   procedure Initialize (This : in out RTSLayerFormFactory'Class);
   function Create return RTSLayerFormFactory_Access;
   function getInstance (This : in out RTSLayerFormFactory; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) return ScrollSelectionForm_Access;
   procedure getInstance (This : in out RTSLayerFormFactory; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class);

end org.allbinary.game.input.RTSLayerFormFactory_Package;


