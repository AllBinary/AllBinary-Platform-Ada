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
limited with org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package;
package org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package_References is
   type HighScoresCanvasInputProcessorFactoryInterface_Access is access all org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package.HighScoresCanvasInputProcessorFactoryInterface'Class;
   type HighScoresCanvasInputProcessorFactoryInterface_Access_Array is array (Natural range <>) of HighScoresCanvasInputProcessorFactoryInterface_Access;
   type HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access is access all HighScoresCanvasInputProcessorFactoryInterface_Access_Array;
   type HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access;
   type HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access_Array_Access is access all HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access_Array;
   type HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HighScoresCanvasInputProcessorFactoryInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access is (if Value /= null and then Value.all in HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Object'Class then HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Object'Class (Value.all).Value else null);
   type HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access_Array_Object'Class then HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package_References;

with org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.score.displayable.HighScoresCanvas_Package;
with org.allbinary.game.score.displayable.HighScoresCanvas_Package_References;
limited with org.allbinary.game.score.HighScoresCanvasInputProcessor_Package;
with org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References;

package org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package is

   package HighScoresCanvas_Package renames Standard.org.allbinary.game.score.displayable.HighScoresCanvas_Package;
   package Reference_Types is
   subtype HighScoresCanvas_Access is org.allbinary.game.score.displayable.HighScoresCanvas_Package_References.HighScoresCanvas_Access;
   use type HighScoresCanvas_Access;
   subtype HighScoresCanvas_Access_Array is org.allbinary.game.score.displayable.HighScoresCanvas_Package_References.HighScoresCanvas_Access_Array;
   use type HighScoresCanvas_Access_Array;
   subtype HighScoresCanvas_Access_Array_Access is org.allbinary.game.score.displayable.HighScoresCanvas_Package_References.HighScoresCanvas_Access_Array_Access;
   use type HighScoresCanvas_Access_Array_Access;
   subtype HighScoresCanvas_Access_Array_Access_Array is org.allbinary.game.score.displayable.HighScoresCanvas_Package_References.HighScoresCanvas_Access_Array_Access_Array;
   use type HighScoresCanvas_Access_Array_Access_Array;
   subtype HighScoresCanvas_Access_Array_Access_Array_Access is org.allbinary.game.score.displayable.HighScoresCanvas_Package_References.HighScoresCanvas_Access_Array_Access_Array_Access;
   use type HighScoresCanvas_Access_Array_Access_Array_Access;
   subtype HighScoresCanvasInputProcessor_Access is org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References.HighScoresCanvasInputProcessor_Access;
   use type HighScoresCanvasInputProcessor_Access;
   subtype HighScoresCanvasInputProcessor_Access_Array is org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References.HighScoresCanvasInputProcessor_Access_Array;
   use type HighScoresCanvasInputProcessor_Access_Array;
   subtype HighScoresCanvasInputProcessor_Access_Array_Access is org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References.HighScoresCanvasInputProcessor_Access_Array_Access;
   use type HighScoresCanvasInputProcessor_Access_Array_Access;
   subtype HighScoresCanvasInputProcessor_Access_Array_Access_Array is org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References.HighScoresCanvasInputProcessor_Access_Array_Access_Array;
   use type HighScoresCanvasInputProcessor_Access_Array_Access_Array;
   subtype HighScoresCanvasInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References.HighScoresCanvasInputProcessor_Access_Array_Access_Array_Access;
   use type HighScoresCanvasInputProcessor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type HighScoresCanvasInputProcessorFactoryInterface is interface;
   subtype HighScoresCanvasInputProcessorFactoryInterface_Access is org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package_References.HighScoresCanvasInputProcessorFactoryInterface_Access;
   function "=" (Left, Right : HighScoresCanvasInputProcessorFactoryInterface_Access) return Boolean renames org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package_References."=";
   subtype HighScoresCanvasInputProcessorFactoryInterface_Access_Array is org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package_References.HighScoresCanvasInputProcessorFactoryInterface_Access_Array;
   function "=" (Left, Right : HighScoresCanvasInputProcessorFactoryInterface_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package_References."=";
   subtype HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access is org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package_References.HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package_References."=";
   function Java_Box (Value : HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_HighScoresCanvasInputProcessorFactoryInterface_Access_Array (Value : access Java_Object'Class) return HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access renames org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package_References.Java_Unbox_HighScoresCanvasInputProcessorFactoryInterface_Access_Array;
   subtype HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access_Array is org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package_References.HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package_References."=";
   subtype HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package_References.HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package_References."=";
   function Java_Box (Value : HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access_Array_Access renames org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package_References.Java_Unbox_HighScoresCanvasInputProcessorFactoryInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_HighScoresCanvasInputProcessorFactoryInterface (Value : HighScoresCanvasInputProcessorFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInstance (This : in out HighScoresCanvasInputProcessorFactoryInterface; highScoresCanvas_Param : access HighScoresCanvas_Package.HighScoresCanvas'Class) return HighScoresCanvasInputProcessor_Access is abstract;
   procedure getInstance (This : in out HighScoresCanvasInputProcessorFactoryInterface; highScoresCanvas_Param : access HighScoresCanvas_Package.HighScoresCanvas'Class) is abstract;

end org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package;


