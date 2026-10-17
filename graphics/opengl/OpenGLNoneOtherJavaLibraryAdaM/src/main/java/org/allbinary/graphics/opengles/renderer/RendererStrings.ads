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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.opengles.renderer.RendererStrings_Package is


   type RendererStrings is tagged;
   type RendererStrings_Access is access all RendererStrings'Class;
   type RendererStrings_Access_Array is array (Natural range <>) of RendererStrings_Access;
   type RendererStrings_Access_Array_Access is access all RendererStrings_Access_Array;

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
   procedure getInstance;

end org.allbinary.graphics.opengles.renderer.RendererStrings_Package;


