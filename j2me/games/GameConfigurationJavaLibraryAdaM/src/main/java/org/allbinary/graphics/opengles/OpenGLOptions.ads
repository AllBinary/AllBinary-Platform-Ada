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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package; use org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.graphics.opengles.OpenGLOptions_Package is

   package Features_Package renames org.allbinary.game.configuration.feature.Features_Package;
   package GameFeatureChoiceGroups_Package renames org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;

   type OpenGLOptions is tagged;
   type OpenGLOptions_Access is access all OpenGLOptions'Class;
   type OpenGLOptions_Access_Array is array (Natural range <>) of OpenGLOptions_Access;
   type OpenGLOptions_Access_Array_Access is access all OpenGLOptions_Access_Array;

   type OpenGLOptions is new Java_Object with null record;

   procedure Initialize (This : in out OpenGLOptions'Class);
   function Create return OpenGLOptions_Access;
   procedure init (This : in out OpenGLOptions);

end org.allbinary.graphics.opengles.OpenGLOptions_Package;


