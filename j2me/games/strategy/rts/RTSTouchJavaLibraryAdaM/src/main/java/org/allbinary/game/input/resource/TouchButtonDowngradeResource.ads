-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2007 AllBinary 
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
limited with org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package;
package org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package_References is
   type TouchButtonDowngradeResource_Access is access all org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package.TouchButtonDowngradeResource'Class;
   type TouchButtonDowngradeResource_Access_Array is array (Natural range <>) of TouchButtonDowngradeResource_Access;
   type TouchButtonDowngradeResource_Access_Array_Access is access all TouchButtonDowngradeResource_Access_Array;
   type TouchButtonDowngradeResource_Access_Array_Access_Array is array (Natural range <>) of TouchButtonDowngradeResource_Access_Array_Access;
   type TouchButtonDowngradeResource_Access_Array_Access_Array_Access is access all TouchButtonDowngradeResource_Access_Array_Access_Array;
   type TouchButtonDowngradeResource_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchButtonDowngradeResource_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchButtonDowngradeResource_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchButtonDowngradeResource_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchButtonDowngradeResource_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchButtonDowngradeResource_Access_Array_Access is (if Value /= null and then Value.all in TouchButtonDowngradeResource_Access_Array_Object'Class then TouchButtonDowngradeResource_Access_Array_Object'Class (Value.all).Value else null);
   type TouchButtonDowngradeResource_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchButtonDowngradeResource_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchButtonDowngradeResource_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchButtonDowngradeResource_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchButtonDowngradeResource_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchButtonDowngradeResource_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TouchButtonDowngradeResource_Access_Array_Access_Array_Object'Class then TouchButtonDowngradeResource_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package_References;

with org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.motion.button.TouchButtonResource_Package; use org.allbinary.input.motion.button.TouchButtonResource_Package;

package org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package is

   package TouchButtonResource_Package renames Standard.org.allbinary.input.motion.button.TouchButtonResource_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TouchButtonDowngradeResource_Access is org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package_References.TouchButtonDowngradeResource_Access;
   function "=" (Left, Right : TouchButtonDowngradeResource_Access) return Boolean renames org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package_References."=";
   subtype TouchButtonDowngradeResource_Access_Array is org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package_References.TouchButtonDowngradeResource_Access_Array;
   function "=" (Left, Right : TouchButtonDowngradeResource_Access_Array) return Boolean renames org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package_References."=";
   subtype TouchButtonDowngradeResource_Access_Array_Access is org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package_References.TouchButtonDowngradeResource_Access_Array_Access;
   function "=" (Left, Right : TouchButtonDowngradeResource_Access_Array_Access) return Boolean renames org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package_References."=";
   function Java_Box (Value : TouchButtonDowngradeResource_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package_References.Java_Box;
   function Java_Unbox_TouchButtonDowngradeResource_Access_Array (Value : access Java_Object'Class) return TouchButtonDowngradeResource_Access_Array_Access renames org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package_References.Java_Unbox_TouchButtonDowngradeResource_Access_Array;
   subtype TouchButtonDowngradeResource_Access_Array_Access_Array is org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package_References.TouchButtonDowngradeResource_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonDowngradeResource_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package_References."=";
   subtype TouchButtonDowngradeResource_Access_Array_Access_Array_Access is org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package_References.TouchButtonDowngradeResource_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonDowngradeResource_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package_References."=";
   function Java_Box (Value : TouchButtonDowngradeResource_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package_References.Java_Box;
   function Java_Unbox_TouchButtonDowngradeResource_Access_Array_Access_Array (Value : access Java_Object'Class) return TouchButtonDowngradeResource_Access_Array_Access_Array_Access renames org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package_References.Java_Unbox_TouchButtonDowngradeResource_Access_Array_Access_Array;

   type TouchButtonDowngradeResource is new TouchButtonResource with null record;
   instance : TouchButtonResource_Access;

   procedure Initialize (This : in out TouchButtonDowngradeResource'Class);
   function Create return TouchButtonDowngradeResource_Access;
   function getInstance return TouchButtonResource_Access;

end org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package;


