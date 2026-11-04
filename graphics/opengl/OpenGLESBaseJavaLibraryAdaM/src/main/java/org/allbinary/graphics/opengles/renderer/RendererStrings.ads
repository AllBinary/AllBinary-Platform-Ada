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

limited with org.allbinary.graphics.opengles.renderer.RendererStrings_Package;
package org.allbinary.graphics.opengles.renderer.RendererStrings_Package_References is
   type RendererStrings_Access is access all org.allbinary.graphics.opengles.renderer.RendererStrings_Package.RendererStrings'Class;
   type RendererStrings_Access_Array is array (Natural range <>) of RendererStrings_Access;
   type RendererStrings_Access_Array_Access is access all RendererStrings_Access_Array;
   type RendererStrings_Access_Array_Access_Array is array (Natural range <>) of RendererStrings_Access_Array_Access;
   type RendererStrings_Access_Array_Access_Array_Access is access all RendererStrings_Access_Array_Access_Array;
end org.allbinary.graphics.opengles.renderer.RendererStrings_Package_References;

with org.allbinary.graphics.opengles.renderer.RendererStrings_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.opengles.renderer.RendererStrings_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype RendererStrings_Access is org.allbinary.graphics.opengles.renderer.RendererStrings_Package_References.RendererStrings_Access;
   function "=" (Left, Right : RendererStrings_Access) return Boolean renames org.allbinary.graphics.opengles.renderer.RendererStrings_Package_References."=";
   subtype RendererStrings_Access_Array is org.allbinary.graphics.opengles.renderer.RendererStrings_Package_References.RendererStrings_Access_Array;
   function "=" (Left, Right : RendererStrings_Access_Array) return Boolean renames org.allbinary.graphics.opengles.renderer.RendererStrings_Package_References."=";
   subtype RendererStrings_Access_Array_Access is org.allbinary.graphics.opengles.renderer.RendererStrings_Package_References.RendererStrings_Access_Array_Access;
   function "=" (Left, Right : RendererStrings_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.renderer.RendererStrings_Package_References."=";
   subtype RendererStrings_Access_Array_Access_Array is org.allbinary.graphics.opengles.renderer.RendererStrings_Package_References.RendererStrings_Access_Array_Access_Array;
   function "=" (Left, Right : RendererStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.renderer.RendererStrings_Package_References."=";
   subtype RendererStrings_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.renderer.RendererStrings_Package_References.RendererStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RendererStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.renderer.RendererStrings_Package_References."=";

   type RendererStrings is new Java_Object with record
      ON_SURFACE_CREATED : Unbounded_String;
      ON_SURFACE_CHANGED : Unbounded_String;
      ON_DRAW_FRAME : Unbounded_String;
      ON_DRAW_FRAME_THREED : Unbounded_String;
      ON_DRAW_FRAME_2D : Unbounded_String;
   end record;
   instance : RendererStrings_Access;

   procedure Initialize (This : in out RendererStrings'Class);
   function Create return RendererStrings_Access;
   function getInstance return RendererStrings_Access;

end org.allbinary.graphics.opengles.renderer.RendererStrings_Package;


