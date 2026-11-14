-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
limited with org.allbinary.graphics.threed.RatioProcessor_Package;
package org.allbinary.graphics.threed.RatioProcessor_Package_References is
   type RatioProcessor_Access is access all org.allbinary.graphics.threed.RatioProcessor_Package.RatioProcessor'Class;
   type RatioProcessor_Access_Array is array (Natural range <>) of RatioProcessor_Access;
   type RatioProcessor_Access_Array_Access is access all RatioProcessor_Access_Array;
   type RatioProcessor_Access_Array_Access_Array is array (Natural range <>) of RatioProcessor_Access_Array_Access;
   type RatioProcessor_Access_Array_Access_Array_Access is access all RatioProcessor_Access_Array_Access_Array;
   type RatioProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RatioProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : RatioProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RatioProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RatioProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RatioProcessor_Access_Array_Access is (if Value /= null and then Value.all in RatioProcessor_Access_Array_Object'Class then RatioProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type RatioProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RatioProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RatioProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RatioProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RatioProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RatioProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RatioProcessor_Access_Array_Access_Array_Object'Class then RatioProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.threed.RatioProcessor_Package_References;

with org.allbinary.graphics.threed.RatioProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.threed.RatioProcessor_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype RatioProcessor_Access is org.allbinary.graphics.threed.RatioProcessor_Package_References.RatioProcessor_Access;
   function "=" (Left, Right : RatioProcessor_Access) return Boolean renames org.allbinary.graphics.threed.RatioProcessor_Package_References."=";
   subtype RatioProcessor_Access_Array is org.allbinary.graphics.threed.RatioProcessor_Package_References.RatioProcessor_Access_Array;
   function "=" (Left, Right : RatioProcessor_Access_Array) return Boolean renames org.allbinary.graphics.threed.RatioProcessor_Package_References."=";
   subtype RatioProcessor_Access_Array_Access is org.allbinary.graphics.threed.RatioProcessor_Package_References.RatioProcessor_Access_Array_Access;
   function "=" (Left, Right : RatioProcessor_Access_Array_Access) return Boolean renames org.allbinary.graphics.threed.RatioProcessor_Package_References."=";
   function Java_Box (Value : RatioProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.threed.RatioProcessor_Package_References.Java_Box;
   function Java_Unbox_RatioProcessor_Access_Array (Value : access Java_Object'Class) return RatioProcessor_Access_Array_Access renames org.allbinary.graphics.threed.RatioProcessor_Package_References.Java_Unbox_RatioProcessor_Access_Array;
   subtype RatioProcessor_Access_Array_Access_Array is org.allbinary.graphics.threed.RatioProcessor_Package_References.RatioProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : RatioProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.threed.RatioProcessor_Package_References."=";
   subtype RatioProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.threed.RatioProcessor_Package_References.RatioProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RatioProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.threed.RatioProcessor_Package_References."=";
   function Java_Box (Value : RatioProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.threed.RatioProcessor_Package_References.Java_Box;
   function Java_Unbox_RatioProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return RatioProcessor_Access_Array_Access_Array_Access renames org.allbinary.graphics.threed.RatioProcessor_Package_References.Java_Unbox_RatioProcessor_Access_Array_Access_Array;

   type RatioProcessor is new Java_Object with null record;

   procedure Initialize (This : in out RatioProcessor'Class);
   function Create return RatioProcessor_Access;
   procedure setCustom (This : in out RatioProcessor; width : Integer; height : Integer; ratio : Float);

end org.allbinary.graphics.threed.RatioProcessor_Package;


