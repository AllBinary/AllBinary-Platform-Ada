-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
limited with org.allbinary.game.layer.SWTUtil_Package;
package org.allbinary.game.layer.SWTUtil_Package_References is
   type SWTUtil_Access is access all org.allbinary.game.layer.SWTUtil_Package.SWTUtil'Class;
   type SWTUtil_Access_Array is array (Natural range <>) of SWTUtil_Access;
   type SWTUtil_Access_Array_Access is access all SWTUtil_Access_Array;
   type SWTUtil_Access_Array_Access_Array is array (Natural range <>) of SWTUtil_Access_Array_Access;
   type SWTUtil_Access_Array_Access_Array_Access is access all SWTUtil_Access_Array_Access_Array;
   type SWTUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SWTUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : SWTUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SWTUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SWTUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SWTUtil_Access_Array_Access is (if Value /= null and then Value.all in SWTUtil_Access_Array_Object'Class then SWTUtil_Access_Array_Object'Class (Value.all).Value else null);
   type SWTUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SWTUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SWTUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SWTUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SWTUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SWTUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SWTUtil_Access_Array_Access_Array_Object'Class then SWTUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.SWTUtil_Package_References;

with org.allbinary.game.layer.SWTUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.layer.SWTUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype SWTUtil_Access is org.allbinary.game.layer.SWTUtil_Package_References.SWTUtil_Access;
   function "=" (Left, Right : SWTUtil_Access) return Boolean renames org.allbinary.game.layer.SWTUtil_Package_References."=";
   subtype SWTUtil_Access_Array is org.allbinary.game.layer.SWTUtil_Package_References.SWTUtil_Access_Array;
   function "=" (Left, Right : SWTUtil_Access_Array) return Boolean renames org.allbinary.game.layer.SWTUtil_Package_References."=";
   subtype SWTUtil_Access_Array_Access is org.allbinary.game.layer.SWTUtil_Package_References.SWTUtil_Access_Array_Access;
   function "=" (Left, Right : SWTUtil_Access_Array_Access) return Boolean renames org.allbinary.game.layer.SWTUtil_Package_References."=";
   function Java_Box (Value : SWTUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.SWTUtil_Package_References.Java_Box;
   function Java_Unbox_SWTUtil_Access_Array (Value : access Java_Object'Class) return SWTUtil_Access_Array_Access renames org.allbinary.game.layer.SWTUtil_Package_References.Java_Unbox_SWTUtil_Access_Array;
   subtype SWTUtil_Access_Array_Access_Array is org.allbinary.game.layer.SWTUtil_Package_References.SWTUtil_Access_Array_Access_Array;
   function "=" (Left, Right : SWTUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.SWTUtil_Package_References."=";
   subtype SWTUtil_Access_Array_Access_Array_Access is org.allbinary.game.layer.SWTUtil_Package_References.SWTUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SWTUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.SWTUtil_Package_References."=";
   function Java_Box (Value : SWTUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.SWTUtil_Package_References.Java_Box;
   function Java_Unbox_SWTUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return SWTUtil_Access_Array_Access_Array_Access renames org.allbinary.game.layer.SWTUtil_Package_References.Java_Unbox_SWTUtil_Access_Array_Access_Array;

   type SWTUtil is new Java_Object with null record;
   isSWT : Boolean;
   SWT : Unbounded_String;

   procedure Initialize (This : in out SWTUtil'Class);
   function Create return SWTUtil_Access;

end org.allbinary.game.layer.SWTUtil_Package;


