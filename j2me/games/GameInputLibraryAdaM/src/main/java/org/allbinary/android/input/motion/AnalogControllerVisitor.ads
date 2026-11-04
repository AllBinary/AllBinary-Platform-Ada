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

limited with org.allbinary.android.input.motion.AnalogControllerVisitor_Package;
package org.allbinary.android.input.motion.AnalogControllerVisitor_Package_References is
   type AnalogControllerVisitor_Access is access all org.allbinary.android.input.motion.AnalogControllerVisitor_Package.AnalogControllerVisitor'Class;
   type AnalogControllerVisitor_Access_Array is array (Natural range <>) of AnalogControllerVisitor_Access;
   type AnalogControllerVisitor_Access_Array_Access is access all AnalogControllerVisitor_Access_Array;
   type AnalogControllerVisitor_Access_Array_Access_Array is array (Natural range <>) of AnalogControllerVisitor_Access_Array_Access;
   type AnalogControllerVisitor_Access_Array_Access_Array_Access is access all AnalogControllerVisitor_Access_Array_Access_Array;
end org.allbinary.android.input.motion.AnalogControllerVisitor_Package_References;

with org.allbinary.android.input.motion.AnalogControllerVisitor_Package_References;
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
limited with org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package;
with org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package_References;

package org.allbinary.android.input.motion.AnalogControllerVisitor_Package is

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


   subtype AnalogControllerVisitor_Access is org.allbinary.android.input.motion.AnalogControllerVisitor_Package_References.AnalogControllerVisitor_Access;
   function "=" (Left, Right : AnalogControllerVisitor_Access) return Boolean renames org.allbinary.android.input.motion.AnalogControllerVisitor_Package_References."=";
   subtype AnalogControllerVisitor_Access_Array is org.allbinary.android.input.motion.AnalogControllerVisitor_Package_References.AnalogControllerVisitor_Access_Array;
   function "=" (Left, Right : AnalogControllerVisitor_Access_Array) return Boolean renames org.allbinary.android.input.motion.AnalogControllerVisitor_Package_References."=";
   subtype AnalogControllerVisitor_Access_Array_Access is org.allbinary.android.input.motion.AnalogControllerVisitor_Package_References.AnalogControllerVisitor_Access_Array_Access;
   function "=" (Left, Right : AnalogControllerVisitor_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.AnalogControllerVisitor_Package_References."=";
   subtype AnalogControllerVisitor_Access_Array_Access_Array is org.allbinary.android.input.motion.AnalogControllerVisitor_Package_References.AnalogControllerVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : AnalogControllerVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.android.input.motion.AnalogControllerVisitor_Package_References."=";
   subtype AnalogControllerVisitor_Access_Array_Access_Array_Access is org.allbinary.android.input.motion.AnalogControllerVisitor_Package_References.AnalogControllerVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnalogControllerVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.AnalogControllerVisitor_Package_References."=";

   type AnalogControllerVisitor is new Java_Object with null record;

   procedure Initialize (This : in out AnalogControllerVisitor'Class);
   function Create return AnalogControllerVisitor_Access;
   procedure process (This : in out AnalogControllerVisitor; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; analogLocationInputProcessor_Param : access AnalogLocationInputProcessor_Package.AnalogLocationInputProcessor'Class);

end org.allbinary.android.input.motion.AnalogControllerVisitor_Package;


