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
limited with org.allbinary.game.behavior.topview.InitialJumpBehavior_Package;
package org.allbinary.game.behavior.topview.InitialJumpBehavior_Package_References is
   type InitialJumpBehavior_Access is access all org.allbinary.game.behavior.topview.InitialJumpBehavior_Package.InitialJumpBehavior'Class;
   type InitialJumpBehavior_Access_Array is array (Natural range <>) of InitialJumpBehavior_Access;
   type InitialJumpBehavior_Access_Array_Access is access all InitialJumpBehavior_Access_Array;
   type InitialJumpBehavior_Access_Array_Access_Array is array (Natural range <>) of InitialJumpBehavior_Access_Array_Access;
   type InitialJumpBehavior_Access_Array_Access_Array_Access is access all InitialJumpBehavior_Access_Array_Access_Array;
   type InitialJumpBehavior_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InitialJumpBehavior_Access_Array_Access;
   end record;
   function Java_Box (Value : InitialJumpBehavior_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InitialJumpBehavior_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InitialJumpBehavior_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InitialJumpBehavior_Access_Array_Access is (if Value /= null and then Value.all in InitialJumpBehavior_Access_Array_Object'Class then InitialJumpBehavior_Access_Array_Object'Class (Value.all).Value else null);
   type InitialJumpBehavior_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InitialJumpBehavior_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InitialJumpBehavior_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InitialJumpBehavior_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InitialJumpBehavior_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InitialJumpBehavior_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InitialJumpBehavior_Access_Array_Access_Array_Object'Class then InitialJumpBehavior_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.behavior.topview.InitialJumpBehavior_Package_References;

with org.allbinary.game.behavior.topview.InitialJumpBehavior_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.behavior.topview.InitialJumpBehavior_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype InitialJumpBehavior_Access is org.allbinary.game.behavior.topview.InitialJumpBehavior_Package_References.InitialJumpBehavior_Access;
   function "=" (Left, Right : InitialJumpBehavior_Access) return Boolean renames org.allbinary.game.behavior.topview.InitialJumpBehavior_Package_References."=";
   subtype InitialJumpBehavior_Access_Array is org.allbinary.game.behavior.topview.InitialJumpBehavior_Package_References.InitialJumpBehavior_Access_Array;
   function "=" (Left, Right : InitialJumpBehavior_Access_Array) return Boolean renames org.allbinary.game.behavior.topview.InitialJumpBehavior_Package_References."=";
   subtype InitialJumpBehavior_Access_Array_Access is org.allbinary.game.behavior.topview.InitialJumpBehavior_Package_References.InitialJumpBehavior_Access_Array_Access;
   function "=" (Left, Right : InitialJumpBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.behavior.topview.InitialJumpBehavior_Package_References."=";
   function Java_Box (Value : InitialJumpBehavior_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.behavior.topview.InitialJumpBehavior_Package_References.Java_Box;
   function Java_Unbox_InitialJumpBehavior_Access_Array (Value : access Java_Object'Class) return InitialJumpBehavior_Access_Array_Access renames org.allbinary.game.behavior.topview.InitialJumpBehavior_Package_References.Java_Unbox_InitialJumpBehavior_Access_Array;
   subtype InitialJumpBehavior_Access_Array_Access_Array is org.allbinary.game.behavior.topview.InitialJumpBehavior_Package_References.InitialJumpBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : InitialJumpBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.behavior.topview.InitialJumpBehavior_Package_References."=";
   subtype InitialJumpBehavior_Access_Array_Access_Array_Access is org.allbinary.game.behavior.topview.InitialJumpBehavior_Package_References.InitialJumpBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InitialJumpBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.behavior.topview.InitialJumpBehavior_Package_References."=";
   function Java_Box (Value : InitialJumpBehavior_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.behavior.topview.InitialJumpBehavior_Package_References.Java_Box;
   function Java_Unbox_InitialJumpBehavior_Access_Array_Access_Array (Value : access Java_Object'Class) return InitialJumpBehavior_Access_Array_Access_Array_Access renames org.allbinary.game.behavior.topview.InitialJumpBehavior_Package_References.Java_Unbox_InitialJumpBehavior_Access_Array_Access_Array;

   type InitialJumpBehavior is new Java_Object with null record;

   procedure Initialize (This : in out InitialJumpBehavior'Class);
   function Create return InitialJumpBehavior_Access;
   procedure process (This : in out InitialJumpBehavior);

end org.allbinary.game.behavior.topview.InitialJumpBehavior_Package;


