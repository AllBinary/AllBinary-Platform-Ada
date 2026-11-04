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

limited with org.allbinary.input.automation.module.game.GraphicsAnalysisUtil_Package;
package org.allbinary.input.automation.module.game.GraphicsAnalysisUtil_Package_References is
   type GraphicsAnalysisUtil_Access is access all org.allbinary.input.automation.module.game.GraphicsAnalysisUtil_Package.GraphicsAnalysisUtil'Class;
   type GraphicsAnalysisUtil_Access_Array is array (Natural range <>) of GraphicsAnalysisUtil_Access;
   type GraphicsAnalysisUtil_Access_Array_Access is access all GraphicsAnalysisUtil_Access_Array;
   type GraphicsAnalysisUtil_Access_Array_Access_Array is array (Natural range <>) of GraphicsAnalysisUtil_Access_Array_Access;
   type GraphicsAnalysisUtil_Access_Array_Access_Array_Access is access all GraphicsAnalysisUtil_Access_Array_Access_Array;
end org.allbinary.input.automation.module.game.GraphicsAnalysisUtil_Package_References;

with org.allbinary.input.automation.module.game.GraphicsAnalysisUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;

package org.allbinary.input.automation.module.game.GraphicsAnalysisUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GraphicsAnalysisUtil_Access is org.allbinary.input.automation.module.game.GraphicsAnalysisUtil_Package_References.GraphicsAnalysisUtil_Access;
   function "=" (Left, Right : GraphicsAnalysisUtil_Access) return Boolean renames org.allbinary.input.automation.module.game.GraphicsAnalysisUtil_Package_References."=";
   subtype GraphicsAnalysisUtil_Access_Array is org.allbinary.input.automation.module.game.GraphicsAnalysisUtil_Package_References.GraphicsAnalysisUtil_Access_Array;
   function "=" (Left, Right : GraphicsAnalysisUtil_Access_Array) return Boolean renames org.allbinary.input.automation.module.game.GraphicsAnalysisUtil_Package_References."=";
   subtype GraphicsAnalysisUtil_Access_Array_Access is org.allbinary.input.automation.module.game.GraphicsAnalysisUtil_Package_References.GraphicsAnalysisUtil_Access_Array_Access;
   function "=" (Left, Right : GraphicsAnalysisUtil_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.game.GraphicsAnalysisUtil_Package_References."=";
   subtype GraphicsAnalysisUtil_Access_Array_Access_Array is org.allbinary.input.automation.module.game.GraphicsAnalysisUtil_Package_References.GraphicsAnalysisUtil_Access_Array_Access_Array;
   function "=" (Left, Right : GraphicsAnalysisUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.game.GraphicsAnalysisUtil_Package_References."=";
   subtype GraphicsAnalysisUtil_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.game.GraphicsAnalysisUtil_Package_References.GraphicsAnalysisUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GraphicsAnalysisUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.game.GraphicsAnalysisUtil_Package_References."=";

   type GraphicsAnalysisUtil is new Java_Object with null record;
   MAX : constant Integer := 122;

   procedure Initialize (This : in out GraphicsAnalysisUtil'Class);
   function Create return GraphicsAnalysisUtil_Access;
   function getNominator (bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; min_x : Integer; max_x : Integer; y : Integer) return Long_Float;
   procedure getNominator (bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; min_x : Integer; max_x : Integer; y : Integer);

end org.allbinary.input.automation.module.game.GraphicsAnalysisUtil_Package;


