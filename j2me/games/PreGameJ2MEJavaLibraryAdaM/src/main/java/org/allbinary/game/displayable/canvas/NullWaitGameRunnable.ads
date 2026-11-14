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
limited with org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package;
package org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package_References is
   type NullWaitGameRunnable_Access is access all org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package.NullWaitGameRunnable'Class;
   type NullWaitGameRunnable_Access_Array is array (Natural range <>) of NullWaitGameRunnable_Access;
   type NullWaitGameRunnable_Access_Array_Access is access all NullWaitGameRunnable_Access_Array;
   type NullWaitGameRunnable_Access_Array_Access_Array is array (Natural range <>) of NullWaitGameRunnable_Access_Array_Access;
   type NullWaitGameRunnable_Access_Array_Access_Array_Access is access all NullWaitGameRunnable_Access_Array_Access_Array;
   type NullWaitGameRunnable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullWaitGameRunnable_Access_Array_Access;
   end record;
   function Java_Box (Value : NullWaitGameRunnable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullWaitGameRunnable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullWaitGameRunnable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullWaitGameRunnable_Access_Array_Access is (if Value /= null and then Value.all in NullWaitGameRunnable_Access_Array_Object'Class then NullWaitGameRunnable_Access_Array_Object'Class (Value.all).Value else null);
   type NullWaitGameRunnable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullWaitGameRunnable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullWaitGameRunnable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullWaitGameRunnable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullWaitGameRunnable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullWaitGameRunnable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullWaitGameRunnable_Access_Array_Access_Array_Object'Class then NullWaitGameRunnable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package_References;

with org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.displayable.canvas.GameRunnable_Package; use org.allbinary.game.displayable.canvas.GameRunnable_Package;

package org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NullWaitGameRunnable_Access is org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package_References.NullWaitGameRunnable_Access;
   function "=" (Left, Right : NullWaitGameRunnable_Access) return Boolean renames org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package_References."=";
   subtype NullWaitGameRunnable_Access_Array is org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package_References.NullWaitGameRunnable_Access_Array;
   function "=" (Left, Right : NullWaitGameRunnable_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package_References."=";
   subtype NullWaitGameRunnable_Access_Array_Access is org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package_References.NullWaitGameRunnable_Access_Array_Access;
   function "=" (Left, Right : NullWaitGameRunnable_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package_References."=";
   function Java_Box (Value : NullWaitGameRunnable_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package_References.Java_Box;
   function Java_Unbox_NullWaitGameRunnable_Access_Array (Value : access Java_Object'Class) return NullWaitGameRunnable_Access_Array_Access renames org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package_References.Java_Unbox_NullWaitGameRunnable_Access_Array;
   subtype NullWaitGameRunnable_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package_References.NullWaitGameRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : NullWaitGameRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package_References."=";
   subtype NullWaitGameRunnable_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package_References.NullWaitGameRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullWaitGameRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package_References."=";
   function Java_Box (Value : NullWaitGameRunnable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package_References.Java_Box;
   function Java_Unbox_NullWaitGameRunnable_Access_Array_Access_Array (Value : access Java_Object'Class) return NullWaitGameRunnable_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package_References.Java_Unbox_NullWaitGameRunnable_Access_Array_Access_Array;

   type NullWaitGameRunnable is new GameRunnable with null record;
   instance : GameRunnable_Access;

   procedure Initialize (This : in out NullWaitGameRunnable'Class);
   function Create return NullWaitGameRunnable_Access;
   function getInstance return GameRunnable_Access;

end org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package;


