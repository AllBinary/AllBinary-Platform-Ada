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
--  with java.io.Closeable_Package; use java.io.Closeable_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.game.configuration.feature.Feature_Package; use org.allbinary.game.configuration.feature.Feature_Package;
with org.allbinary.graphics.opengles.OpenGLFeature_Package; use org.allbinary.graphics.opengles.OpenGLFeature_Package;

package org.allbinary.graphics.opengles.OpenGLConfiguration_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Feature_Package renames Standard.org.allbinary.game.configuration.feature.Feature_Package;

   type OpenGLConfiguration is tagged;
   type OpenGLConfiguration_Access is access all OpenGLConfiguration'Class;
   type OpenGLConfiguration_Access_Array is array (Natural range <>) of OpenGLConfiguration_Access;
   type OpenGLConfiguration_Access_Array_Access is access all OpenGLConfiguration_Access_Array;
   type OpenGLConfiguration_Access_Array_Access_Array is array (Natural range <>) of OpenGLConfiguration_Access_Array_Access;
   type OpenGLConfiguration_Access_Array_Access_Array_Access is access all OpenGLConfiguration_Access_Array_Access_Array;

   type OpenGLConfiguration is new Java_Object with record
      logUtil : LogUtil_Access;
      FILE : Unbounded_String;
      commonStrings : CommonStrings_Access;
      tsUtil : TsUtil_Access;
      opengl : Boolean;
      type_Id : OpenGLFeature_Access;
      imageColor : OpenGLFeature_Access;
      color : OpenGLFeature_Access;
      versionSelector : OpenGLFeature_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out OpenGLConfiguration'Class);
   function Create return OpenGLConfiguration_Access;
   function getInstance return OpenGLConfiguration_Access;
   procedure read (This : in out OpenGLConfiguration);
   procedure write (This : in out OpenGLConfiguration);
   procedure init (This : in out OpenGLConfiguration);
   procedure update (This : in out OpenGLConfiguration; gameFeature_Param : access Feature_Package.Feature'Class; colorLocked : Boolean);
   procedure setOpenGL (This : in out OpenGLConfiguration; opengl : Boolean);
   function isOpenGL (This : in out OpenGLConfiguration) return Boolean;
   procedure setImageColor (This : in out OpenGLConfiguration; imageColor_Param : access OpenGLFeature_Package.OpenGLFeature'Class);
   function getImageColor (This : in out OpenGLConfiguration) return OpenGLFeature_Access;
   procedure setColor (This : in out OpenGLConfiguration; color_Param : access OpenGLFeature_Package.OpenGLFeature'Class);
   function getColor (This : in out OpenGLConfiguration) return OpenGLFeature_Access;
   procedure setVersionSelector (This : in out OpenGLConfiguration; versionSelector_Param : access OpenGLFeature_Package.OpenGLFeature'Class);
   function getVersionSelector (This : in out OpenGLConfiguration) return OpenGLFeature_Access;
   procedure setType (This : in out OpenGLConfiguration; type_Id_Param : access OpenGLFeature_Package.OpenGLFeature'Class);
   function getType (This : in out OpenGLConfiguration) return OpenGLFeature_Access;
   function toString (This : in out OpenGLConfiguration) return Unbounded_String;

end org.allbinary.graphics.opengles.OpenGLConfiguration_Package;


