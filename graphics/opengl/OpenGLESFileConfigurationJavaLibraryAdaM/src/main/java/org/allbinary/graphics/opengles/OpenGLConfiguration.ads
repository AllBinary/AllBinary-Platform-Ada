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
--  with java.io.DataInputStream_Package; use java.io.DataInputStream_Package;
--  with java.io.InputStream_Package; use java.io.InputStream_Package;
--  with java.io.OutputStream_Package; use java.io.OutputStream_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.logic.io.AbDataOutputStream_Package; use org.allbinary.logic.io.AbDataOutputStream_Package;
with org.allbinary.logic.io.FileStreamFactory_Package; use org.allbinary.logic.io.FileStreamFactory_Package;
with org.allbinary.logic.io.StreamUtil_Package; use org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.io.file_Case.FileFactory_Package; use org.allbinary.logic.io.file_Case.FileFactory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package; use org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package;
with org.allbinary.game.configuration.feature.Feature_Package; use org.allbinary.game.configuration.feature.Feature_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.MainFeatureFactory_Package; use org.allbinary.game.configuration.feature.MainFeatureFactory_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.io.NullCloseable_Package; use org.allbinary.logic.io.NullCloseable_Package;

package org.allbinary.graphics.opengles.OpenGLConfiguration_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package AbDataOutputStream_Package renames Standard.org.allbinary.logic.io.AbDataOutputStream_Package;
   package FileStreamFactory_Package renames Standard.org.allbinary.logic.io.FileStreamFactory_Package;
   package StreamUtil_Package renames Standard.org.allbinary.logic.io.StreamUtil_Package;
   package FileFactory_Package renames Standard.org.allbinary.logic.io.file_Case.FileFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package ChangedGameFeatureListener_Package renames Standard.org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package;
   package Feature_Package renames Standard.org.allbinary.game.configuration.feature.Feature_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package MainFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.MainFeatureFactory_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package NullCloseable_Package renames Standard.org.allbinary.logic.io.NullCloseable_Package;

   type OpenGLConfiguration is tagged;
   type OpenGLConfiguration_Access is access all OpenGLConfiguration'Class;
   type OpenGLConfiguration_Access_Array is array (Natural range <>) of OpenGLConfiguration_Access;
   type OpenGLConfiguration_Access_Array_Access is access all OpenGLConfiguration_Access_Array;

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
   procedure getInstance;
   procedure read (This : in out OpenGLConfiguration);
   procedure write (This : in out OpenGLConfiguration);
   procedure init (This : in out OpenGLConfiguration);
   procedure update (This : in out OpenGLConfiguration; gameFeature : Feature_Access; colorLocked : Boolean);
   procedure setOpenGL (This : in out OpenGLConfiguration; opengl : Boolean);
   function isOpenGL (This : in out OpenGLConfiguration) return Boolean;
   procedure isOpenGL (This : in out OpenGLConfiguration);
   procedure setImageColor (This : in out OpenGLConfiguration; imageColor : OpenGLFeature_Access);
   function getImageColor (This : in out OpenGLConfiguration) return OpenGLFeature_Access;
   procedure getImageColor (This : in out OpenGLConfiguration);
   procedure setColor (This : in out OpenGLConfiguration; color : OpenGLFeature_Access);
   function getColor (This : in out OpenGLConfiguration) return OpenGLFeature_Access;
   procedure getColor (This : in out OpenGLConfiguration);
   procedure setVersionSelector (This : in out OpenGLConfiguration; versionSelector : OpenGLFeature_Access);
   function getVersionSelector (This : in out OpenGLConfiguration) return OpenGLFeature_Access;
   procedure getVersionSelector (This : in out OpenGLConfiguration);
   procedure setType (This : in out OpenGLConfiguration; type_Id : OpenGLFeature_Access);
   function getType (This : in out OpenGLConfiguration) return OpenGLFeature_Access;
   procedure getType (This : in out OpenGLConfiguration);
   function toString (This : in out OpenGLConfiguration) return Unbounded_String;
   procedure toString (This : in out OpenGLConfiguration);

end org.allbinary.graphics.opengles.OpenGLConfiguration_Package;


