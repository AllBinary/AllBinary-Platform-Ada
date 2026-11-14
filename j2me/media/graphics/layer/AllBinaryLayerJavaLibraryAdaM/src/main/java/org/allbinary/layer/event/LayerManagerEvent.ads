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
limited with org.allbinary.layer.event.LayerManagerEvent_Package;
package org.allbinary.layer.event.LayerManagerEvent_Package_References is
   type LayerManagerEvent_Access is access all org.allbinary.layer.event.LayerManagerEvent_Package.LayerManagerEvent'Class;
   type LayerManagerEvent_Access_Array is array (Natural range <>) of LayerManagerEvent_Access;
   type LayerManagerEvent_Access_Array_Access is access all LayerManagerEvent_Access_Array;
   type LayerManagerEvent_Access_Array_Access_Array is array (Natural range <>) of LayerManagerEvent_Access_Array_Access;
   type LayerManagerEvent_Access_Array_Access_Array_Access is access all LayerManagerEvent_Access_Array_Access_Array;
   type LayerManagerEvent_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LayerManagerEvent_Access_Array_Access;
   end record;
   function Java_Box (Value : LayerManagerEvent_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LayerManagerEvent_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LayerManagerEvent_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LayerManagerEvent_Access_Array_Access is (if Value /= null and then Value.all in LayerManagerEvent_Access_Array_Object'Class then LayerManagerEvent_Access_Array_Object'Class (Value.all).Value else null);
   type LayerManagerEvent_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LayerManagerEvent_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LayerManagerEvent_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LayerManagerEvent_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LayerManagerEvent_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LayerManagerEvent_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LayerManagerEvent_Access_Array_Access_Array_Object'Class then LayerManagerEvent_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.layer.event.LayerManagerEvent_Package_References;

with org.allbinary.layer.event.LayerManagerEvent_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.layer.LayerManager_Package;
with org.allbinary.layer.LayerManager_Package_References;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;

package org.allbinary.layer.event.LayerManagerEvent_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package LayerManager_Package renames Standard.org.allbinary.layer.LayerManager_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package Reference_Types is
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
   subtype LayerManager_Access is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access;
   use type LayerManager_Access;
   subtype LayerManager_Access_Array is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access_Array;
   use type LayerManager_Access_Array;
   subtype LayerManager_Access_Array_Access is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access_Array_Access;
   use type LayerManager_Access_Array_Access;
   subtype LayerManager_Access_Array_Access_Array is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access_Array_Access_Array;
   use type LayerManager_Access_Array_Access_Array;
   subtype LayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access_Array_Access_Array_Access;
   use type LayerManager_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LayerManagerEvent_Access is org.allbinary.layer.event.LayerManagerEvent_Package_References.LayerManagerEvent_Access;
   function "=" (Left, Right : LayerManagerEvent_Access) return Boolean renames org.allbinary.layer.event.LayerManagerEvent_Package_References."=";
   subtype LayerManagerEvent_Access_Array is org.allbinary.layer.event.LayerManagerEvent_Package_References.LayerManagerEvent_Access_Array;
   function "=" (Left, Right : LayerManagerEvent_Access_Array) return Boolean renames org.allbinary.layer.event.LayerManagerEvent_Package_References."=";
   subtype LayerManagerEvent_Access_Array_Access is org.allbinary.layer.event.LayerManagerEvent_Package_References.LayerManagerEvent_Access_Array_Access;
   function "=" (Left, Right : LayerManagerEvent_Access_Array_Access) return Boolean renames org.allbinary.layer.event.LayerManagerEvent_Package_References."=";
   function Java_Box (Value : LayerManagerEvent_Access_Array_Access) return Java_Object_Access renames org.allbinary.layer.event.LayerManagerEvent_Package_References.Java_Box;
   function Java_Unbox_LayerManagerEvent_Access_Array (Value : access Java_Object'Class) return LayerManagerEvent_Access_Array_Access renames org.allbinary.layer.event.LayerManagerEvent_Package_References.Java_Unbox_LayerManagerEvent_Access_Array;
   subtype LayerManagerEvent_Access_Array_Access_Array is org.allbinary.layer.event.LayerManagerEvent_Package_References.LayerManagerEvent_Access_Array_Access_Array;
   function "=" (Left, Right : LayerManagerEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.event.LayerManagerEvent_Package_References."=";
   subtype LayerManagerEvent_Access_Array_Access_Array_Access is org.allbinary.layer.event.LayerManagerEvent_Package_References.LayerManagerEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerManagerEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.event.LayerManagerEvent_Package_References."=";
   function Java_Box (Value : LayerManagerEvent_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.layer.event.LayerManagerEvent_Package_References.Java_Box;
   function Java_Unbox_LayerManagerEvent_Access_Array_Access_Array (Value : access Java_Object'Class) return LayerManagerEvent_Access_Array_Access_Array_Access renames org.allbinary.layer.event.LayerManagerEvent_Package_References.Java_Unbox_LayerManagerEvent_Access_Array_Access_Array;

   type LayerManagerEvent is new AllBinaryEventObject with record
      layerInterface : AllBinaryLayer_Access;
      crud : Unbounded_String;
   end record;

   procedure Initialize (This : in out LayerManagerEvent'Class; layerManager_Param : access LayerManager_Package.LayerManager'Class; crud : Unbounded_String);
   function Create (layerManager_Param : access LayerManager_Package.LayerManager'Class; crud : Unbounded_String) return LayerManagerEvent_Access;
   function getLayerInterface (This : in out LayerManagerEvent) return AllBinaryLayer_Access;
   procedure setLayerInterface (This : in out LayerManagerEvent; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   function toString (This : in out LayerManagerEvent) return Unbounded_String;

end org.allbinary.layer.event.LayerManagerEvent_Package;


