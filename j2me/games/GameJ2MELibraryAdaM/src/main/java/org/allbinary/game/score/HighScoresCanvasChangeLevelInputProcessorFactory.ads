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
limited with org.allbinary.game.score.HighScoresCanvasChangeLevelInputProcessorFactory_Package;
package org.allbinary.game.score.HighScoresCanvasChangeLevelInputProcessorFactory_Package_References is
   type HighScoresCanvasChangeLevelInputProcessorFactory_Access is access all org.allbinary.game.score.HighScoresCanvasChangeLevelInputProcessorFactory_Package.HighScoresCanvasChangeLevelInputProcessorFactory'Class;
   type HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array is array (Natural range <>) of HighScoresCanvasChangeLevelInputProcessorFactory_Access;
   type HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access is access all HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array;
   type HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access_Array is array (Natural range <>) of HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access;
   type HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access_Array_Access is access all HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access_Array;
   type HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access is (if Value /= null and then Value.all in HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Object'Class then HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Object'Class (Value.all).Value else null);
   type HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access_Array_Object'Class then HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.score.HighScoresCanvasChangeLevelInputProcessorFactory_Package_References;

with org.allbinary.game.score.HighScoresCanvasChangeLevelInputProcessorFactory_Package_References;
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
with org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package; use org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package;
limited with org.allbinary.game.score.HighScoresCanvasInputProcessor_Package;
with org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References;

package org.allbinary.game.score.HighScoresCanvasChangeLevelInputProcessorFactory_Package is

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


   subtype HighScoresCanvasChangeLevelInputProcessorFactory_Access is org.allbinary.game.score.HighScoresCanvasChangeLevelInputProcessorFactory_Package_References.HighScoresCanvasChangeLevelInputProcessorFactory_Access;
   function "=" (Left, Right : HighScoresCanvasChangeLevelInputProcessorFactory_Access) return Boolean renames org.allbinary.game.score.HighScoresCanvasChangeLevelInputProcessorFactory_Package_References."=";
   subtype HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array is org.allbinary.game.score.HighScoresCanvasChangeLevelInputProcessorFactory_Package_References.HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array;
   function "=" (Left, Right : HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresCanvasChangeLevelInputProcessorFactory_Package_References."=";
   subtype HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access is org.allbinary.game.score.HighScoresCanvasChangeLevelInputProcessorFactory_Package_References.HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access;
   function "=" (Left, Right : HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresCanvasChangeLevelInputProcessorFactory_Package_References."=";
   function Java_Box (Value : HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.HighScoresCanvasChangeLevelInputProcessorFactory_Package_References.Java_Box;
   function Java_Unbox_HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array (Value : access Java_Object'Class) return HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access renames org.allbinary.game.score.HighScoresCanvasChangeLevelInputProcessorFactory_Package_References.Java_Unbox_HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array;
   subtype HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access_Array is org.allbinary.game.score.HighScoresCanvasChangeLevelInputProcessorFactory_Package_References.HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresCanvasChangeLevelInputProcessorFactory_Package_References."=";
   subtype HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresCanvasChangeLevelInputProcessorFactory_Package_References.HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresCanvasChangeLevelInputProcessorFactory_Package_References."=";
   function Java_Box (Value : HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.HighScoresCanvasChangeLevelInputProcessorFactory_Package_References.Java_Box;
   function Java_Unbox_HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access_Array_Access renames org.allbinary.game.score.HighScoresCanvasChangeLevelInputProcessorFactory_Package_References.Java_Unbox_HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access_Array;

   type HighScoresCanvasChangeLevelInputProcessorFactory is new Java_Object and HighScoresCanvasInputProcessorFactoryInterface with null record;

   procedure Initialize (This : in out HighScoresCanvasChangeLevelInputProcessorFactory'Class);
   function Create return HighScoresCanvasChangeLevelInputProcessorFactory_Access;
   function getInstance (This : in out HighScoresCanvasChangeLevelInputProcessorFactory; highScoresCanvas_Param : access HighScoresCanvas_Package.HighScoresCanvas'Class) return HighScoresCanvasInputProcessor_Access;
   procedure getInstance (This : in out HighScoresCanvasChangeLevelInputProcessorFactory; highScoresCanvas_Param : access HighScoresCanvas_Package.HighScoresCanvas'Class);

end org.allbinary.game.score.HighScoresCanvasChangeLevelInputProcessorFactory_Package;


