-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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
limited with org.allbinary.game.midlet.DemoGameMidletJs_Package;
package org.allbinary.game.midlet.DemoGameMidletJs_Package_References is
   type DemoGameMidletJs_Access is access all org.allbinary.game.midlet.DemoGameMidletJs_Package.DemoGameMidletJs'Class;
   type DemoGameMidletJs_Access_Array is array (Natural range <>) of DemoGameMidletJs_Access;
   type DemoGameMidletJs_Access_Array_Access is access all DemoGameMidletJs_Access_Array;
   type DemoGameMidletJs_Access_Array_Access_Array is array (Natural range <>) of DemoGameMidletJs_Access_Array_Access;
   type DemoGameMidletJs_Access_Array_Access_Array_Access is access all DemoGameMidletJs_Access_Array_Access_Array;
   type DemoGameMidletJs_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DemoGameMidletJs_Access_Array_Access;
   end record;
   function Java_Box (Value : DemoGameMidletJs_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DemoGameMidletJs_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DemoGameMidletJs_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DemoGameMidletJs_Access_Array_Access is (if Value /= null and then Value.all in DemoGameMidletJs_Access_Array_Object'Class then DemoGameMidletJs_Access_Array_Object'Class (Value.all).Value else null);
   type DemoGameMidletJs_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DemoGameMidletJs_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DemoGameMidletJs_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DemoGameMidletJs_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DemoGameMidletJs_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DemoGameMidletJs_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DemoGameMidletJs_Access_Array_Access_Array_Object'Class then DemoGameMidletJs_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.midlet.DemoGameMidletJs_Package_References;

with org.allbinary.game.midlet.DemoGameMidletJs_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References;

package org.allbinary.game.midlet.DemoGameMidletJs_Package is

   package GameCanvasRunnableInterface_Package renames Standard.org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;
   package Reference_Types is
   subtype GameCanvasRunnableInterface_Access is org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References.GameCanvasRunnableInterface_Access;
   use type GameCanvasRunnableInterface_Access;
   subtype GameCanvasRunnableInterface_Access_Array is org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References.GameCanvasRunnableInterface_Access_Array;
   use type GameCanvasRunnableInterface_Access_Array;
   subtype GameCanvasRunnableInterface_Access_Array_Access is org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References.GameCanvasRunnableInterface_Access_Array_Access;
   use type GameCanvasRunnableInterface_Access_Array_Access;
   subtype GameCanvasRunnableInterface_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References.GameCanvasRunnableInterface_Access_Array_Access_Array;
   use type GameCanvasRunnableInterface_Access_Array_Access_Array;
   subtype GameCanvasRunnableInterface_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References.GameCanvasRunnableInterface_Access_Array_Access_Array_Access;
   use type GameCanvasRunnableInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type DemoGameMidletJs is interface;
   subtype DemoGameMidletJs_Access is org.allbinary.game.midlet.DemoGameMidletJs_Package_References.DemoGameMidletJs_Access;
   function "=" (Left, Right : DemoGameMidletJs_Access) return Boolean renames org.allbinary.game.midlet.DemoGameMidletJs_Package_References."=";
   subtype DemoGameMidletJs_Access_Array is org.allbinary.game.midlet.DemoGameMidletJs_Package_References.DemoGameMidletJs_Access_Array;
   function "=" (Left, Right : DemoGameMidletJs_Access_Array) return Boolean renames org.allbinary.game.midlet.DemoGameMidletJs_Package_References."=";
   subtype DemoGameMidletJs_Access_Array_Access is org.allbinary.game.midlet.DemoGameMidletJs_Package_References.DemoGameMidletJs_Access_Array_Access;
   function "=" (Left, Right : DemoGameMidletJs_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.DemoGameMidletJs_Package_References."=";
   function Java_Box (Value : DemoGameMidletJs_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.midlet.DemoGameMidletJs_Package_References.Java_Box;
   function Java_Unbox_DemoGameMidletJs_Access_Array (Value : access Java_Object'Class) return DemoGameMidletJs_Access_Array_Access renames org.allbinary.game.midlet.DemoGameMidletJs_Package_References.Java_Unbox_DemoGameMidletJs_Access_Array;
   subtype DemoGameMidletJs_Access_Array_Access_Array is org.allbinary.game.midlet.DemoGameMidletJs_Package_References.DemoGameMidletJs_Access_Array_Access_Array;
   function "=" (Left, Right : DemoGameMidletJs_Access_Array_Access_Array) return Boolean renames org.allbinary.game.midlet.DemoGameMidletJs_Package_References."=";
   subtype DemoGameMidletJs_Access_Array_Access_Array_Access is org.allbinary.game.midlet.DemoGameMidletJs_Package_References.DemoGameMidletJs_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DemoGameMidletJs_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.DemoGameMidletJs_Package_References."=";
   function Java_Box (Value : DemoGameMidletJs_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.midlet.DemoGameMidletJs_Package_References.Java_Box;
   function Java_Unbox_DemoGameMidletJs_Access_Array_Access_Array (Value : access Java_Object'Class) return DemoGameMidletJs_Access_Array_Access_Array_Access renames org.allbinary.game.midlet.DemoGameMidletJs_Package_References.Java_Unbox_DemoGameMidletJs_Access_Array_Access_Array;
   function Java_Object_Access_From_DemoGameMidletJs (Value : DemoGameMidletJs_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function createDemoGameCanvasRunnableInterface (This : in out DemoGameMidletJs) return GameCanvasRunnableInterface_Access is abstract;

end org.allbinary.game.midlet.DemoGameMidletJs_Package;


