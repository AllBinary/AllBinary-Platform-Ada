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
limited with org.allbinary.android.input.motion.AllAnalogControllerVisitor_Package;
package org.allbinary.android.input.motion.AllAnalogControllerVisitor_Package_References is
   type AllAnalogControllerVisitor_Access is access all org.allbinary.android.input.motion.AllAnalogControllerVisitor_Package.AllAnalogControllerVisitor'Class;
   type AllAnalogControllerVisitor_Access_Array is array (Natural range <>) of AllAnalogControllerVisitor_Access;
   type AllAnalogControllerVisitor_Access_Array_Access is access all AllAnalogControllerVisitor_Access_Array;
   type AllAnalogControllerVisitor_Access_Array_Access_Array is array (Natural range <>) of AllAnalogControllerVisitor_Access_Array_Access;
   type AllAnalogControllerVisitor_Access_Array_Access_Array_Access is access all AllAnalogControllerVisitor_Access_Array_Access_Array;
   type AllAnalogControllerVisitor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllAnalogControllerVisitor_Access_Array_Access;
   end record;
   function Java_Box (Value : AllAnalogControllerVisitor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllAnalogControllerVisitor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllAnalogControllerVisitor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllAnalogControllerVisitor_Access_Array_Access is (if Value /= null and then Value.all in AllAnalogControllerVisitor_Access_Array_Object'Class then AllAnalogControllerVisitor_Access_Array_Object'Class (Value.all).Value else null);
   type AllAnalogControllerVisitor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllAnalogControllerVisitor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AllAnalogControllerVisitor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllAnalogControllerVisitor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllAnalogControllerVisitor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllAnalogControllerVisitor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AllAnalogControllerVisitor_Access_Array_Access_Array_Object'Class then AllAnalogControllerVisitor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.android.input.motion.AllAnalogControllerVisitor_Package_References;

with org.allbinary.android.input.motion.AllAnalogControllerVisitor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.android.input.motion.AnalogControllerVisitor_Package; use org.allbinary.android.input.motion.AnalogControllerVisitor_Package;
limited with org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package;
with org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package_References;

package org.allbinary.android.input.motion.AllAnalogControllerVisitor_Package is

   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package Reference_Types is
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
   subtype AnalogLocationInputProcessor_Access is org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package_References.AnalogLocationInputProcessor_Access;
   use type AnalogLocationInputProcessor_Access;
   subtype AnalogLocationInputProcessor_Access_Array is org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package_References.AnalogLocationInputProcessor_Access_Array;
   use type AnalogLocationInputProcessor_Access_Array;
   subtype AnalogLocationInputProcessor_Access_Array_Access is org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package_References.AnalogLocationInputProcessor_Access_Array_Access;
   use type AnalogLocationInputProcessor_Access_Array_Access;
   subtype AnalogLocationInputProcessor_Access_Array_Access_Array is org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package_References.AnalogLocationInputProcessor_Access_Array_Access_Array;
   use type AnalogLocationInputProcessor_Access_Array_Access_Array;
   subtype AnalogLocationInputProcessor_Access_Array_Access_Array_Access is org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package_References.AnalogLocationInputProcessor_Access_Array_Access_Array_Access;
   use type AnalogLocationInputProcessor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AllAnalogControllerVisitor_Access is org.allbinary.android.input.motion.AllAnalogControllerVisitor_Package_References.AllAnalogControllerVisitor_Access;
   function "=" (Left, Right : AllAnalogControllerVisitor_Access) return Boolean renames org.allbinary.android.input.motion.AllAnalogControllerVisitor_Package_References."=";
   subtype AllAnalogControllerVisitor_Access_Array is org.allbinary.android.input.motion.AllAnalogControllerVisitor_Package_References.AllAnalogControllerVisitor_Access_Array;
   function "=" (Left, Right : AllAnalogControllerVisitor_Access_Array) return Boolean renames org.allbinary.android.input.motion.AllAnalogControllerVisitor_Package_References."=";
   subtype AllAnalogControllerVisitor_Access_Array_Access is org.allbinary.android.input.motion.AllAnalogControllerVisitor_Package_References.AllAnalogControllerVisitor_Access_Array_Access;
   function "=" (Left, Right : AllAnalogControllerVisitor_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.AllAnalogControllerVisitor_Package_References."=";
   function Java_Box (Value : AllAnalogControllerVisitor_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.input.motion.AllAnalogControllerVisitor_Package_References.Java_Box;
   function Java_Unbox_AllAnalogControllerVisitor_Access_Array (Value : access Java_Object'Class) return AllAnalogControllerVisitor_Access_Array_Access renames org.allbinary.android.input.motion.AllAnalogControllerVisitor_Package_References.Java_Unbox_AllAnalogControllerVisitor_Access_Array;
   subtype AllAnalogControllerVisitor_Access_Array_Access_Array is org.allbinary.android.input.motion.AllAnalogControllerVisitor_Package_References.AllAnalogControllerVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : AllAnalogControllerVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.android.input.motion.AllAnalogControllerVisitor_Package_References."=";
   subtype AllAnalogControllerVisitor_Access_Array_Access_Array_Access is org.allbinary.android.input.motion.AllAnalogControllerVisitor_Package_References.AllAnalogControllerVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllAnalogControllerVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.AllAnalogControllerVisitor_Package_References."=";
   function Java_Box (Value : AllAnalogControllerVisitor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.input.motion.AllAnalogControllerVisitor_Package_References.Java_Box;
   function Java_Unbox_AllAnalogControllerVisitor_Access_Array_Access_Array (Value : access Java_Object'Class) return AllAnalogControllerVisitor_Access_Array_Access_Array_Access renames org.allbinary.android.input.motion.AllAnalogControllerVisitor_Package_References.Java_Unbox_AllAnalogControllerVisitor_Access_Array_Access_Array;

   type AllAnalogControllerVisitor is new AnalogControllerVisitor with null record;

   procedure Initialize (This : in out AllAnalogControllerVisitor'Class);
   function Create return AllAnalogControllerVisitor_Access;
   procedure process (This : in out AllAnalogControllerVisitor; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; analogLocationInputProcessor_Param : access AnalogLocationInputProcessor_Package.AnalogLocationInputProcessor'Class);

end org.allbinary.android.input.motion.AllAnalogControllerVisitor_Package;


