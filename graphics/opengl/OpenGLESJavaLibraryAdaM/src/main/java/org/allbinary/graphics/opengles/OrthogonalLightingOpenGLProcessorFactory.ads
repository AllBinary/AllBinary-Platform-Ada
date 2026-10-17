-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

package org.allbinary.graphics.opengles.OrthogonalLightingOpenGLProcessorFactory_Package is


   type OrthogonalLightingOpenGLProcessorFactory is tagged;
   type OrthogonalLightingOpenGLProcessorFactory_Access is access all OrthogonalLightingOpenGLProcessorFactory'Class;
   type OrthogonalLightingOpenGLProcessorFactory_Access_Array is array (Natural range <>) of OrthogonalLightingOpenGLProcessorFactory_Access;
   type OrthogonalLightingOpenGLProcessorFactory_Access_Array_Access is access all OrthogonalLightingOpenGLProcessorFactory_Access_Array;

   type OrthogonalLightingOpenGLProcessorFactory is new Java_Object with record
      sceneLightingOrthogonalModeOpenGLProcessor : OpenGLProcessor_Access;
      sceneLightsOrthogonalModeOpenGLProcessor : OpenGLProcessor_Access;
   end record;
   instance : OrthogonalLightingOpenGLProcessorFactory_Access;

   procedure Initialize (This : in out OrthogonalLightingOpenGLProcessorFactory'Class);
   function Create return OrthogonalLightingOpenGLProcessorFactory_Access;
   function getInstance return OrthogonalLightingOpenGLProcessorFactory_Access;
   procedure getInstance;

end org.allbinary.graphics.opengles.OrthogonalLightingOpenGLProcessorFactory_Package;


