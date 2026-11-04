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

limited with org.allbinary.game.score.HighScoresCanvasNoInputProcessorFactory_Package;
package org.allbinary.game.score.HighScoresCanvasNoInputProcessorFactory_Package_References is
   type HighScoresCanvasNoInputProcessorFactory_Access is access all org.allbinary.game.score.HighScoresCanvasNoInputProcessorFactory_Package.HighScoresCanvasNoInputProcessorFactory'Class;
   type HighScoresCanvasNoInputProcessorFactory_Access_Array is array (Natural range <>) of HighScoresCanvasNoInputProcessorFactory_Access;
   type HighScoresCanvasNoInputProcessorFactory_Access_Array_Access is access all HighScoresCanvasNoInputProcessorFactory_Access_Array;
   type HighScoresCanvasNoInputProcessorFactory_Access_Array_Access_Array is array (Natural range <>) of HighScoresCanvasNoInputProcessorFactory_Access_Array_Access;
   type HighScoresCanvasNoInputProcessorFactory_Access_Array_Access_Array_Access is access all HighScoresCanvasNoInputProcessorFactory_Access_Array_Access_Array;
end org.allbinary.game.score.HighScoresCanvasNoInputProcessorFactory_Package_References;

with org.allbinary.game.score.HighScoresCanvasNoInputProcessorFactory_Package_References;
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

package org.allbinary.game.score.HighScoresCanvasNoInputProcessorFactory_Package is

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


   subtype HighScoresCanvasNoInputProcessorFactory_Access is org.allbinary.game.score.HighScoresCanvasNoInputProcessorFactory_Package_References.HighScoresCanvasNoInputProcessorFactory_Access;
   function "=" (Left, Right : HighScoresCanvasNoInputProcessorFactory_Access) return Boolean renames org.allbinary.game.score.HighScoresCanvasNoInputProcessorFactory_Package_References."=";
   subtype HighScoresCanvasNoInputProcessorFactory_Access_Array is org.allbinary.game.score.HighScoresCanvasNoInputProcessorFactory_Package_References.HighScoresCanvasNoInputProcessorFactory_Access_Array;
   function "=" (Left, Right : HighScoresCanvasNoInputProcessorFactory_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresCanvasNoInputProcessorFactory_Package_References."=";
   subtype HighScoresCanvasNoInputProcessorFactory_Access_Array_Access is org.allbinary.game.score.HighScoresCanvasNoInputProcessorFactory_Package_References.HighScoresCanvasNoInputProcessorFactory_Access_Array_Access;
   function "=" (Left, Right : HighScoresCanvasNoInputProcessorFactory_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresCanvasNoInputProcessorFactory_Package_References."=";
   subtype HighScoresCanvasNoInputProcessorFactory_Access_Array_Access_Array is org.allbinary.game.score.HighScoresCanvasNoInputProcessorFactory_Package_References.HighScoresCanvasNoInputProcessorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoresCanvasNoInputProcessorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresCanvasNoInputProcessorFactory_Package_References."=";
   subtype HighScoresCanvasNoInputProcessorFactory_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresCanvasNoInputProcessorFactory_Package_References.HighScoresCanvasNoInputProcessorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoresCanvasNoInputProcessorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresCanvasNoInputProcessorFactory_Package_References."=";

   type HighScoresCanvasNoInputProcessorFactory is new Java_Object and HighScoresCanvasInputProcessorFactoryInterface with null record;

   procedure Initialize (This : in out HighScoresCanvasNoInputProcessorFactory'Class);
   function Create return HighScoresCanvasNoInputProcessorFactory_Access;
   function getInstance (This : in out HighScoresCanvasNoInputProcessorFactory; highScoresCanvas_Param : access HighScoresCanvas_Package.HighScoresCanvas'Class) return HighScoresCanvasInputProcessor_Access;
   procedure getInstance (This : in out HighScoresCanvasNoInputProcessorFactory; highScoresCanvas_Param : access HighScoresCanvas_Package.HighScoresCanvas'Class);

end org.allbinary.game.score.HighScoresCanvasNoInputProcessorFactory_Package;


