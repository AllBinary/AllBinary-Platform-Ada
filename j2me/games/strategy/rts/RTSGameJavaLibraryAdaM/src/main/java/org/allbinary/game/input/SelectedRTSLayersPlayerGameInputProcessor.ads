-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
limited with org.allbinary.game.input.SelectedRTSLayersPlayerGameInputProcessor_Package;
package org.allbinary.game.input.SelectedRTSLayersPlayerGameInputProcessor_Package_References is
   type SelectedRTSLayersPlayerGameInputProcessor_Access is access all org.allbinary.game.input.SelectedRTSLayersPlayerGameInputProcessor_Package.SelectedRTSLayersPlayerGameInputProcessor'Class;
   type SelectedRTSLayersPlayerGameInputProcessor_Access_Array is array (Natural range <>) of SelectedRTSLayersPlayerGameInputProcessor_Access;
   type SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access is access all SelectedRTSLayersPlayerGameInputProcessor_Access_Array;
   type SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access_Array is array (Natural range <>) of SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access;
   type SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access_Array_Access is access all SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access_Array;
   type SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SelectedRTSLayersPlayerGameInputProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access is (if Value /= null and then Value.all in SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Object'Class then SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access_Array_Object'Class then SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.SelectedRTSLayersPlayerGameInputProcessor_Package_References;

with org.allbinary.game.input.SelectedRTSLayersPlayerGameInputProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.GameInputProcessor_Package; use org.allbinary.game.input.GameInputProcessor_Package;
limited with org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package;
with org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References;

package org.allbinary.game.input.SelectedRTSLayersPlayerGameInputProcessor_Package is

   package Reference_Types is
   subtype SelectedRTSLayersPlayerGameInput_Access is org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References.SelectedRTSLayersPlayerGameInput_Access;
   use type SelectedRTSLayersPlayerGameInput_Access;
   subtype SelectedRTSLayersPlayerGameInput_Access_Array is org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References.SelectedRTSLayersPlayerGameInput_Access_Array;
   use type SelectedRTSLayersPlayerGameInput_Access_Array;
   subtype SelectedRTSLayersPlayerGameInput_Access_Array_Access is org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References.SelectedRTSLayersPlayerGameInput_Access_Array_Access;
   use type SelectedRTSLayersPlayerGameInput_Access_Array_Access;
   subtype SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array is org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References.SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array;
   use type SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array;
   subtype SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References.SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array_Access;
   use type SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SelectedRTSLayersPlayerGameInputProcessor_Access is org.allbinary.game.input.SelectedRTSLayersPlayerGameInputProcessor_Package_References.SelectedRTSLayersPlayerGameInputProcessor_Access;
   function "=" (Left, Right : SelectedRTSLayersPlayerGameInputProcessor_Access) return Boolean renames org.allbinary.game.input.SelectedRTSLayersPlayerGameInputProcessor_Package_References."=";
   subtype SelectedRTSLayersPlayerGameInputProcessor_Access_Array is org.allbinary.game.input.SelectedRTSLayersPlayerGameInputProcessor_Package_References.SelectedRTSLayersPlayerGameInputProcessor_Access_Array;
   function "=" (Left, Right : SelectedRTSLayersPlayerGameInputProcessor_Access_Array) return Boolean renames org.allbinary.game.input.SelectedRTSLayersPlayerGameInputProcessor_Package_References."=";
   subtype SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access is org.allbinary.game.input.SelectedRTSLayersPlayerGameInputProcessor_Package_References.SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access;
   function "=" (Left, Right : SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.input.SelectedRTSLayersPlayerGameInputProcessor_Package_References."=";
   function Java_Box (Value : SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.SelectedRTSLayersPlayerGameInputProcessor_Package_References.Java_Box;
   function Java_Unbox_SelectedRTSLayersPlayerGameInputProcessor_Access_Array (Value : access Java_Object'Class) return SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access renames org.allbinary.game.input.SelectedRTSLayersPlayerGameInputProcessor_Package_References.Java_Unbox_SelectedRTSLayersPlayerGameInputProcessor_Access_Array;
   subtype SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access_Array is org.allbinary.game.input.SelectedRTSLayersPlayerGameInputProcessor_Package_References.SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.SelectedRTSLayersPlayerGameInputProcessor_Package_References."=";
   subtype SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.input.SelectedRTSLayersPlayerGameInputProcessor_Package_References.SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.SelectedRTSLayersPlayerGameInputProcessor_Package_References."=";
   function Java_Box (Value : SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.SelectedRTSLayersPlayerGameInputProcessor_Package_References.Java_Box;
   function Java_Unbox_SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access_Array_Access renames org.allbinary.game.input.SelectedRTSLayersPlayerGameInputProcessor_Package_References.Java_Unbox_SelectedRTSLayersPlayerGameInputProcessor_Access_Array_Access_Array;

   type SelectedRTSLayersPlayerGameInputProcessor is new GameInputProcessor with record
      selectedRTSLayersPlayerGameInput : SelectedRTSLayersPlayerGameInput_Access;
   end record;

   procedure Initialize (This : in out SelectedRTSLayersPlayerGameInputProcessor'Class; selectedRTSLayersPlayerGameInput_Param : access SelectedRTSLayersPlayerGameInput_Package.SelectedRTSLayersPlayerGameInput'Class);
   function Create (selectedRTSLayersPlayerGameInput_Param : access SelectedRTSLayersPlayerGameInput_Package.SelectedRTSLayersPlayerGameInput'Class) return SelectedRTSLayersPlayerGameInputProcessor_Access;

end org.allbinary.game.input.SelectedRTSLayersPlayerGameInputProcessor_Package;


