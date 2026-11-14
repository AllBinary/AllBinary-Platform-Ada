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
limited with org.allbinary.game.configuration.InGameFeatures_Package;
package org.allbinary.game.configuration.InGameFeatures_Package_References is
   type InGameFeatures_Access is access all org.allbinary.game.configuration.InGameFeatures_Package.InGameFeatures'Class;
   type InGameFeatures_Access_Array is array (Natural range <>) of InGameFeatures_Access;
   type InGameFeatures_Access_Array_Access is access all InGameFeatures_Access_Array;
   type InGameFeatures_Access_Array_Access_Array is array (Natural range <>) of InGameFeatures_Access_Array_Access;
   type InGameFeatures_Access_Array_Access_Array_Access is access all InGameFeatures_Access_Array_Access_Array;
   type InGameFeatures_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InGameFeatures_Access_Array_Access;
   end record;
   function Java_Box (Value : InGameFeatures_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InGameFeatures_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InGameFeatures_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InGameFeatures_Access_Array_Access is (if Value /= null and then Value.all in InGameFeatures_Access_Array_Object'Class then InGameFeatures_Access_Array_Object'Class (Value.all).Value else null);
   type InGameFeatures_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InGameFeatures_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InGameFeatures_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InGameFeatures_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InGameFeatures_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InGameFeatures_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InGameFeatures_Access_Array_Access_Array_Object'Class then InGameFeatures_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.configuration.InGameFeatures_Package_References;

with org.allbinary.game.configuration.InGameFeatures_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.init.Init_Package; use org.allbinary.init.Init_Package;

package org.allbinary.game.configuration.InGameFeatures_Package is

   package Init_Package renames Standard.org.allbinary.init.Init_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype InGameFeatures_Access is org.allbinary.game.configuration.InGameFeatures_Package_References.InGameFeatures_Access;
   function "=" (Left, Right : InGameFeatures_Access) return Boolean renames org.allbinary.game.configuration.InGameFeatures_Package_References."=";
   subtype InGameFeatures_Access_Array is org.allbinary.game.configuration.InGameFeatures_Package_References.InGameFeatures_Access_Array;
   function "=" (Left, Right : InGameFeatures_Access_Array) return Boolean renames org.allbinary.game.configuration.InGameFeatures_Package_References."=";
   subtype InGameFeatures_Access_Array_Access is org.allbinary.game.configuration.InGameFeatures_Package_References.InGameFeatures_Access_Array_Access;
   function "=" (Left, Right : InGameFeatures_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.InGameFeatures_Package_References."=";
   function Java_Box (Value : InGameFeatures_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.InGameFeatures_Package_References.Java_Box;
   function Java_Unbox_InGameFeatures_Access_Array (Value : access Java_Object'Class) return InGameFeatures_Access_Array_Access renames org.allbinary.game.configuration.InGameFeatures_Package_References.Java_Unbox_InGameFeatures_Access_Array;
   subtype InGameFeatures_Access_Array_Access_Array is org.allbinary.game.configuration.InGameFeatures_Package_References.InGameFeatures_Access_Array_Access_Array;
   function "=" (Left, Right : InGameFeatures_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.InGameFeatures_Package_References."=";
   subtype InGameFeatures_Access_Array_Access_Array_Access is org.allbinary.game.configuration.InGameFeatures_Package_References.InGameFeatures_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InGameFeatures_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.InGameFeatures_Package_References."=";
   function Java_Box (Value : InGameFeatures_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.InGameFeatures_Package_References.Java_Box;
   function Java_Unbox_InGameFeatures_Access_Array_Access_Array (Value : access Java_Object'Class) return InGameFeatures_Access_Array_Access_Array_Access renames org.allbinary.game.configuration.InGameFeatures_Package_References.Java_Unbox_InGameFeatures_Access_Array_Access_Array;

   type InGameFeatures is new Init_Package.Init with null record;

   procedure Initialize (This : in out InGameFeatures'Class);
   function Create return InGameFeatures_Access;
   procedure init_Method (This : in out InGameFeatures);
   procedure addToInGameMenu (This : in out InGameFeatures);
   function isAny (This : in out InGameFeatures) return Boolean;

end org.allbinary.game.configuration.InGameFeatures_Package;


