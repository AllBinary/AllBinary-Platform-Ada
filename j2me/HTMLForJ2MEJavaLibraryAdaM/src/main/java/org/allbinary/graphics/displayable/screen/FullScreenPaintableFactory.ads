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

limited with org.allbinary.graphics.displayable.screen.FullScreenPaintableFactory_Package;
package org.allbinary.graphics.displayable.screen.FullScreenPaintableFactory_Package_References is
   type FullScreenPaintableFactory_Access is access all org.allbinary.graphics.displayable.screen.FullScreenPaintableFactory_Package.FullScreenPaintableFactory'Class;
   type FullScreenPaintableFactory_Access_Array is array (Natural range <>) of FullScreenPaintableFactory_Access;
   type FullScreenPaintableFactory_Access_Array_Access is access all FullScreenPaintableFactory_Access_Array;
   type FullScreenPaintableFactory_Access_Array_Access_Array is array (Natural range <>) of FullScreenPaintableFactory_Access_Array_Access;
   type FullScreenPaintableFactory_Access_Array_Access_Array_Access is access all FullScreenPaintableFactory_Access_Array_Access_Array;
end org.allbinary.graphics.displayable.screen.FullScreenPaintableFactory_Package_References;

with org.allbinary.graphics.displayable.screen.FullScreenPaintableFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.Paintable_Package_References;

package org.allbinary.graphics.displayable.screen.FullScreenPaintableFactory_Package is

   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package Reference_Types is
   subtype Paintable_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access;
   use type Paintable_Access;
   subtype Paintable_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array;
   use type Paintable_Access_Array;
   subtype Paintable_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access;
   use type Paintable_Access_Array_Access;
   subtype Paintable_Access_Array_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array;
   use type Paintable_Access_Array_Access_Array;
   subtype Paintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array_Access;
   use type Paintable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype FullScreenPaintableFactory_Access is org.allbinary.graphics.displayable.screen.FullScreenPaintableFactory_Package_References.FullScreenPaintableFactory_Access;
   function "=" (Left, Right : FullScreenPaintableFactory_Access) return Boolean renames org.allbinary.graphics.displayable.screen.FullScreenPaintableFactory_Package_References."=";
   subtype FullScreenPaintableFactory_Access_Array is org.allbinary.graphics.displayable.screen.FullScreenPaintableFactory_Package_References.FullScreenPaintableFactory_Access_Array;
   function "=" (Left, Right : FullScreenPaintableFactory_Access_Array) return Boolean renames org.allbinary.graphics.displayable.screen.FullScreenPaintableFactory_Package_References."=";
   subtype FullScreenPaintableFactory_Access_Array_Access is org.allbinary.graphics.displayable.screen.FullScreenPaintableFactory_Package_References.FullScreenPaintableFactory_Access_Array_Access;
   function "=" (Left, Right : FullScreenPaintableFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.screen.FullScreenPaintableFactory_Package_References."=";
   subtype FullScreenPaintableFactory_Access_Array_Access_Array is org.allbinary.graphics.displayable.screen.FullScreenPaintableFactory_Package_References.FullScreenPaintableFactory_Access_Array_Access_Array;
   function "=" (Left, Right : FullScreenPaintableFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.screen.FullScreenPaintableFactory_Package_References."=";
   subtype FullScreenPaintableFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.screen.FullScreenPaintableFactory_Package_References.FullScreenPaintableFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FullScreenPaintableFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.screen.FullScreenPaintableFactory_Package_References."=";

   type FullScreenPaintableFactory is new Java_Object with record
      paintable : Paintable_Access;
   end record;
   instance : FullScreenPaintableFactory_Access;

   procedure Initialize (This : in out FullScreenPaintableFactory'Class);
   function Create return FullScreenPaintableFactory_Access;
   function getInstance return FullScreenPaintableFactory_Access;

end org.allbinary.graphics.displayable.screen.FullScreenPaintableFactory_Package;


