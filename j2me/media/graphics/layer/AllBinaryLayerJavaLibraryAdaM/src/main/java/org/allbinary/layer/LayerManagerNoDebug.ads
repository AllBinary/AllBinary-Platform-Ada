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
limited with org.allbinary.layer.LayerManagerNoDebug_Package;
package org.allbinary.layer.LayerManagerNoDebug_Package_References is
   type LayerManagerNoDebug_Access is access all org.allbinary.layer.LayerManagerNoDebug_Package.LayerManagerNoDebug'Class;
   type LayerManagerNoDebug_Access_Array is array (Natural range <>) of LayerManagerNoDebug_Access;
   type LayerManagerNoDebug_Access_Array_Access is access all LayerManagerNoDebug_Access_Array;
   type LayerManagerNoDebug_Access_Array_Access_Array is array (Natural range <>) of LayerManagerNoDebug_Access_Array_Access;
   type LayerManagerNoDebug_Access_Array_Access_Array_Access is access all LayerManagerNoDebug_Access_Array_Access_Array;
   type LayerManagerNoDebug_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LayerManagerNoDebug_Access_Array_Access;
   end record;
   function Java_Box (Value : LayerManagerNoDebug_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LayerManagerNoDebug_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LayerManagerNoDebug_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LayerManagerNoDebug_Access_Array_Access is (if Value /= null and then Value.all in LayerManagerNoDebug_Access_Array_Object'Class then LayerManagerNoDebug_Access_Array_Object'Class (Value.all).Value else null);
   type LayerManagerNoDebug_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LayerManagerNoDebug_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LayerManagerNoDebug_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LayerManagerNoDebug_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LayerManagerNoDebug_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LayerManagerNoDebug_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LayerManagerNoDebug_Access_Array_Access_Array_Object'Class then LayerManagerNoDebug_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.layer.LayerManagerNoDebug_Package_References;

with org.allbinary.layer.LayerManagerNoDebug_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.layer.LayerManagerLoggingBase_Package; use org.allbinary.layer.LayerManagerLoggingBase_Package;

package org.allbinary.layer.LayerManagerNoDebug_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype LayerManagerNoDebug_Access is org.allbinary.layer.LayerManagerNoDebug_Package_References.LayerManagerNoDebug_Access;
   function "=" (Left, Right : LayerManagerNoDebug_Access) return Boolean renames org.allbinary.layer.LayerManagerNoDebug_Package_References."=";
   subtype LayerManagerNoDebug_Access_Array is org.allbinary.layer.LayerManagerNoDebug_Package_References.LayerManagerNoDebug_Access_Array;
   function "=" (Left, Right : LayerManagerNoDebug_Access_Array) return Boolean renames org.allbinary.layer.LayerManagerNoDebug_Package_References."=";
   subtype LayerManagerNoDebug_Access_Array_Access is org.allbinary.layer.LayerManagerNoDebug_Package_References.LayerManagerNoDebug_Access_Array_Access;
   function "=" (Left, Right : LayerManagerNoDebug_Access_Array_Access) return Boolean renames org.allbinary.layer.LayerManagerNoDebug_Package_References."=";
   function Java_Box (Value : LayerManagerNoDebug_Access_Array_Access) return Java_Object_Access renames org.allbinary.layer.LayerManagerNoDebug_Package_References.Java_Box;
   function Java_Unbox_LayerManagerNoDebug_Access_Array (Value : access Java_Object'Class) return LayerManagerNoDebug_Access_Array_Access renames org.allbinary.layer.LayerManagerNoDebug_Package_References.Java_Unbox_LayerManagerNoDebug_Access_Array;
   subtype LayerManagerNoDebug_Access_Array_Access_Array is org.allbinary.layer.LayerManagerNoDebug_Package_References.LayerManagerNoDebug_Access_Array_Access_Array;
   function "=" (Left, Right : LayerManagerNoDebug_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.LayerManagerNoDebug_Package_References."=";
   subtype LayerManagerNoDebug_Access_Array_Access_Array_Access is org.allbinary.layer.LayerManagerNoDebug_Package_References.LayerManagerNoDebug_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerManagerNoDebug_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.LayerManagerNoDebug_Package_References."=";
   function Java_Box (Value : LayerManagerNoDebug_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.layer.LayerManagerNoDebug_Package_References.Java_Box;
   function Java_Unbox_LayerManagerNoDebug_Access_Array_Access_Array (Value : access Java_Object'Class) return LayerManagerNoDebug_Access_Array_Access_Array_Access renames org.allbinary.layer.LayerManagerNoDebug_Package_References.Java_Unbox_LayerManagerNoDebug_Access_Array_Access_Array;

   type LayerManagerNoDebug is new LayerManagerLoggingBase with null record;
   instance : LayerManagerNoDebug_Access;

   procedure Initialize (This : in out LayerManagerNoDebug'Class);
   function Create return LayerManagerNoDebug_Access;
   function getInstance return LayerManagerNoDebug_Access;

end org.allbinary.layer.LayerManagerNoDebug_Package;


