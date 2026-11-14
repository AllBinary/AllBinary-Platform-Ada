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
limited with org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package;
package org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package_References is
   type ImageComparisonResultsListener_Access is access all org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package.ImageComparisonResultsListener'Class;
   type ImageComparisonResultsListener_Access_Array is array (Natural range <>) of ImageComparisonResultsListener_Access;
   type ImageComparisonResultsListener_Access_Array_Access is access all ImageComparisonResultsListener_Access_Array;
   type ImageComparisonResultsListener_Access_Array_Access_Array is array (Natural range <>) of ImageComparisonResultsListener_Access_Array_Access;
   type ImageComparisonResultsListener_Access_Array_Access_Array_Access is access all ImageComparisonResultsListener_Access_Array_Access_Array;
   type ImageComparisonResultsListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageComparisonResultsListener_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageComparisonResultsListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageComparisonResultsListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageComparisonResultsListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageComparisonResultsListener_Access_Array_Access is (if Value /= null and then Value.all in ImageComparisonResultsListener_Access_Array_Object'Class then ImageComparisonResultsListener_Access_Array_Object'Class (Value.all).Value else null);
   type ImageComparisonResultsListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageComparisonResultsListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageComparisonResultsListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageComparisonResultsListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageComparisonResultsListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageComparisonResultsListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageComparisonResultsListener_Access_Array_Access_Array_Object'Class then ImageComparisonResultsListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package_References;

with org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.BasicEventListenerInterface_Package; use org.allbinary.logic.util.event.BasicEventListenerInterface_Package;
limited with org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package;
with org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package_References;

package org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package is

   package BasicEventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.BasicEventListenerInterface_Package;
   package Reference_Types is
   subtype ImageComparisonResultsEvent_Access is org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package_References.ImageComparisonResultsEvent_Access;
   use type ImageComparisonResultsEvent_Access;
   subtype ImageComparisonResultsEvent_Access_Array is org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package_References.ImageComparisonResultsEvent_Access_Array;
   use type ImageComparisonResultsEvent_Access_Array;
   subtype ImageComparisonResultsEvent_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package_References.ImageComparisonResultsEvent_Access_Array_Access;
   use type ImageComparisonResultsEvent_Access_Array_Access;
   subtype ImageComparisonResultsEvent_Access_Array_Access_Array is org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package_References.ImageComparisonResultsEvent_Access_Array_Access_Array;
   use type ImageComparisonResultsEvent_Access_Array_Access_Array;
   subtype ImageComparisonResultsEvent_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package_References.ImageComparisonResultsEvent_Access_Array_Access_Array_Access;
   use type ImageComparisonResultsEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type ImageComparisonResultsListener is interface and BasicEventListenerInterface;
   subtype ImageComparisonResultsListener_Access is org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package_References.ImageComparisonResultsListener_Access;
   function "=" (Left, Right : ImageComparisonResultsListener_Access) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package_References."=";
   subtype ImageComparisonResultsListener_Access_Array is org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package_References.ImageComparisonResultsListener_Access_Array;
   function "=" (Left, Right : ImageComparisonResultsListener_Access_Array) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package_References."=";
   subtype ImageComparisonResultsListener_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package_References.ImageComparisonResultsListener_Access_Array_Access;
   function "=" (Left, Right : ImageComparisonResultsListener_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package_References."=";
   function Java_Box (Value : ImageComparisonResultsListener_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package_References.Java_Box;
   function Java_Unbox_ImageComparisonResultsListener_Access_Array (Value : access Java_Object'Class) return ImageComparisonResultsListener_Access_Array_Access renames org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package_References.Java_Unbox_ImageComparisonResultsListener_Access_Array;
   subtype ImageComparisonResultsListener_Access_Array_Access_Array is org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package_References.ImageComparisonResultsListener_Access_Array_Access_Array;
   function "=" (Left, Right : ImageComparisonResultsListener_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package_References."=";
   subtype ImageComparisonResultsListener_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package_References.ImageComparisonResultsListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageComparisonResultsListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package_References."=";
   function Java_Box (Value : ImageComparisonResultsListener_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package_References.Java_Box;
   function Java_Unbox_ImageComparisonResultsListener_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageComparisonResultsListener_Access_Array_Access_Array_Access renames org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package_References.Java_Unbox_ImageComparisonResultsListener_Access_Array_Access_Array;
   function Java_Object_Access_From_ImageComparisonResultsListener (Value : ImageComparisonResultsListener_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onImageComparisonResultsEvent (This : in out ImageComparisonResultsListener; imageComparisonResultsEvent_Param : access ImageComparisonResultsEvent_Package.ImageComparisonResultsEvent'Class) is abstract;

end org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package;


