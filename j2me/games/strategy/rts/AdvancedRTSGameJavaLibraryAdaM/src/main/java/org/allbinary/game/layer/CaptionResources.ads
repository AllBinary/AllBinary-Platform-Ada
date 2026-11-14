-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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
limited with org.allbinary.game.layer.CaptionResources_Package;
package org.allbinary.game.layer.CaptionResources_Package_References is
   type CaptionResources_Access is access all org.allbinary.game.layer.CaptionResources_Package.CaptionResources'Class;
   type CaptionResources_Access_Array is array (Natural range <>) of CaptionResources_Access;
   type CaptionResources_Access_Array_Access is access all CaptionResources_Access_Array;
   type CaptionResources_Access_Array_Access_Array is array (Natural range <>) of CaptionResources_Access_Array_Access;
   type CaptionResources_Access_Array_Access_Array_Access is access all CaptionResources_Access_Array_Access_Array;
   type CaptionResources_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CaptionResources_Access_Array_Access;
   end record;
   function Java_Box (Value : CaptionResources_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CaptionResources_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CaptionResources_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CaptionResources_Access_Array_Access is (if Value /= null and then Value.all in CaptionResources_Access_Array_Object'Class then CaptionResources_Access_Array_Object'Class (Value.all).Value else null);
   type CaptionResources_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CaptionResources_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CaptionResources_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CaptionResources_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CaptionResources_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CaptionResources_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CaptionResources_Access_Array_Access_Array_Object'Class then CaptionResources_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.CaptionResources_Package_References;

with org.allbinary.game.layer.CaptionResources_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.layer.CaptionResources_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype CaptionResources_Access is org.allbinary.game.layer.CaptionResources_Package_References.CaptionResources_Access;
   function "=" (Left, Right : CaptionResources_Access) return Boolean renames org.allbinary.game.layer.CaptionResources_Package_References."=";
   subtype CaptionResources_Access_Array is org.allbinary.game.layer.CaptionResources_Package_References.CaptionResources_Access_Array;
   function "=" (Left, Right : CaptionResources_Access_Array) return Boolean renames org.allbinary.game.layer.CaptionResources_Package_References."=";
   subtype CaptionResources_Access_Array_Access is org.allbinary.game.layer.CaptionResources_Package_References.CaptionResources_Access_Array_Access;
   function "=" (Left, Right : CaptionResources_Access_Array_Access) return Boolean renames org.allbinary.game.layer.CaptionResources_Package_References."=";
   function Java_Box (Value : CaptionResources_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.CaptionResources_Package_References.Java_Box;
   function Java_Unbox_CaptionResources_Access_Array (Value : access Java_Object'Class) return CaptionResources_Access_Array_Access renames org.allbinary.game.layer.CaptionResources_Package_References.Java_Unbox_CaptionResources_Access_Array;
   subtype CaptionResources_Access_Array_Access_Array is org.allbinary.game.layer.CaptionResources_Package_References.CaptionResources_Access_Array_Access_Array;
   function "=" (Left, Right : CaptionResources_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.CaptionResources_Package_References."=";
   subtype CaptionResources_Access_Array_Access_Array_Access is org.allbinary.game.layer.CaptionResources_Package_References.CaptionResources_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CaptionResources_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.CaptionResources_Package_References."=";
   function Java_Box (Value : CaptionResources_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.CaptionResources_Package_References.Java_Box;
   function Java_Unbox_CaptionResources_Access_Array_Access_Array (Value : access Java_Object'Class) return CaptionResources_Access_Array_Access_Array_Access renames org.allbinary.game.layer.CaptionResources_Package_References.Java_Unbox_CaptionResources_Access_Array_Access_Array;

   type CaptionResources is new Java_Object with record
      RESOURCE : Unbounded_String;
   end record;
   instance : CaptionResources_Access;

   procedure Initialize (This : in out CaptionResources'Class);
   function Create return CaptionResources_Access;
   function getInstance return CaptionResources_Access;

end org.allbinary.game.layer.CaptionResources_Package;


